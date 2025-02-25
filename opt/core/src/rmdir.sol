pragma ton-solidity >= 0.61.0;

import "Utility.sol";
import "aio.sol";
import "fs.sol";
import "udirent.sol";
import "er.sol";
contract rmdir is Utility {

    function _remove_dir_entries(string dir_list, string[] victims) internal pure returns (string contents) {
        contents = dir_list;
        for (string s: victims)
            contents.translate(s, "");
    }

    function main(s_proc p_in) external pure returns (s_proc p) {
        p = p_in;
        Ar[] ars;
        (uint16 wd, string[] params, , ) = p.get_env();
        bool verbose = p.flag_set("v");
        bool force_removal = p.flag_set("f");
        uint8 ec;
        mapping (uint16 => string[]) victims;
        string sout;

        for (string param: params) {
            s_of f;// = //p.fopen(param, "r");

            string s = param;
            s_stat st;
//            st.stt(f.attr);
            uint16 iop = st.st_ino;
            uint16 parent = wd;
            sout.aif(verbose, "rmdir: removing directory, " + s.squote() + "\n");
            if (iop >= sb.ROOT_DIR) {
                if (libstat.is_dir(st.st_mode)) {
                    if (st.st_nlink < 3) {
                        ars.push(Ar(aio.UNLINK, iop, s, ""));
                        victims[parent].push(udirent.dir_entry_line(iop, s, libstat.FT_DIR));
                    } else
                        ec = err.ENOTEMPTY;
                } else
                    ec = err.ENOTDIR;
            } else if (!force_removal)
                ec = uint8(iop);
            if (ec > err.ESUCCESS)
                p.perror("failed to remove");
        }
        p.puts(sout);
    }

    function _command_help() internal override pure returns (CommandHelp) {
        return CommandHelp(
"rmdir",
"[OPTION]... DIRECTORY...",
"remove empty directories",
"Remove the DIRECTORY(ies), if they are empty.",
"-p      remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is similar to 'rmdir a/b/c a/b a'\n\
-v      output a diagnostic for every directory processed",
"",
"Written by Boris",
"",
"",
"0.01");
    }

}
