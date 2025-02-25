pragma ton-solidity >= 0.61.0;

import "Utility.sol";
import "aio.sol";
import "fs.sol";
import "udirent.sol";
import "er.sol";
struct Arg {
    string path;
    uint8 ft;
    uint16 idx;
    uint16 parent;
    uint16 dir_index;
}
contract rm is Utility {

    function _remove_dir_entries(string dir_list, string[] victims) internal pure returns (string contents) {
        contents = dir_list;
        for (string s: victims)
            contents.translate(s, "");
    }

    function main(s_proc p_in, mapping (uint16 => Inode) inodes, mapping (uint16 => bytes) data) external pure returns (s_proc p) {
        p = p_in;
        Err[] errors;
        Ar[] ars;
        string out;
        (uint16 wd, , , ) = p.get_env();
        Arg[] arg_list;
        for (string param: p.params()) {
            (uint16 index, uint8 t, uint16 parent, uint16 dir_index) = fs.resolve_relative_path(param, wd, inodes, data);
            arg_list.push(Arg(param, t, index, parent, dir_index));
        }
        (bool verbose, bool remove_empty_dirs, bool force_removal, ) = parg.flags_set(p, "vdf");

        mapping (uint16 => string[]) victims;

        for (Arg a: arg_list) {
            (string s, uint8 t, uint16 iop, uint16 parent, ) = a.unpack();
            if (iop >= sb.ROOT_DIR) {
                if (t == libstat.FT_DIR) {
                    if (remove_empty_dirs) {
                        if (inodes[iop].n_links < 3) {
                            ars.push(Ar(aio.UNLINK, iop, s, ""));
                            victims[parent].push(udirent.dir_entry_line(iop, s, t));
                        } else
                            errors.push(Err(0, err.ENOTEMPTY, s));
                    } else
                        errors.push(Err(0, err.EISDIR, s));
                } else {
                    ars.push(Ar(aio.UNLINK, iop, s, ""));
                    if (inodes[iop].n_links < 2)
                        victims[parent].push(udirent.dir_entry_line(iop, s, t));
                    out.aif(verbose, "removed " + s.squote() + "\n");
                }
            } else if (!force_removal)
                errors.push(Err(0, iop, s));
        }

        for ((uint16 dir_i, string[] victim_dirents): victims)
            if (!victim_dirents.empty())
                ars.push(Ar(aio.UPDATE_DIR_ENTRY, dir_i, "", _remove_dir_entries(data[dir_i], victim_dirents)));
    }

    function _command_help() internal override pure returns (CommandHelp) {
        return CommandHelp(
"rm",
"[OPTION]... [FILE]...",
"remove files or directories",
"Remove each specified file. By default, it does not remove directories. Use -r option to remove each listed directory, too, along with all of its contents.",
"-f      ignore nonexistent files and arguments, never prompt\n\
-r      \n\
-R      remove directories and their contents recursively\n\
-d      remove empty directories\n\
-v      explain what is being done",
"",
"Written by Boris",
"",
"",
"0.01");
    }

}
