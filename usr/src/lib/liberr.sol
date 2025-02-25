pragma ton-solidity >= 0.61.2;

library err {
    uint8 constant ESUCCESS = 0; // Operation completed successfully
    uint8 constant EPERM    = 1; // Operation not permitted
    uint8 constant ENOENT   = 2; // No such file or directory
    uint8 constant ESRCH    = 3; // No such process
    uint8 constant EINTR    = 4; // Interrupted system call
    uint8 constant EIO      = 5; // Input/output error
    uint8 constant ENXIO    = 6; // Device not configured
    uint8 constant E2BIG    = 7; // Argument list too long
    uint8 constant ENOEXEC  = 8; // Exec format error
    uint8 constant EBADF    = 9; // Bad file descriptor
    uint8 constant ECHILD   = 10; // No child processes
    uint8 constant EDEADLK  = 11; // Resource deadlock avoided
    uint8 constant ENOMEM   = 12; // Cannot allocate memory
    uint8 constant EACCES   = 13; // Permission denied
    uint8 constant EFAULT   = 14; // Bad address
    uint8 constant ENOTBLK  = 15; // Block device required
    uint8 constant EBUSY    = 16; // Device busy
    uint8 constant EEXIST   = 17; // File exists
    uint8 constant EXDEV    = 18; // Cross-device link
    uint8 constant ENODEV   = 19; // Operation not supported by device
    uint8 constant ENOTDIR  = 20; // Not a directory
    uint8 constant EISDIR   = 21; // Is a directory
    uint8 constant EINVAL   = 22; // Invalid argument
    uint8 constant ENFILE   = 23; // Too many open files in system
    uint8 constant EMFILE   = 24; // Too many open files
    uint8 constant ENOTTY   = 25; // Inappropriate ioctl for device
    uint8 constant ETXTBSY  = 26; // Text file busy
    uint8 constant EFBIG    = 27; // File too large
    uint8 constant ENOSPC   = 28; // No space left on device
    uint8 constant ESPIPE   = 29; // Illegal seek
    uint8 constant EROFS    = 30; // Read-only filesystem
    uint8 constant EMLINK   = 31; // Too many links
    uint8 constant EPIPE    = 32; // Broken pipe
    uint8 constant EDOM     = 33; // Numerical argument out of domain
    uint8 constant ERANGE   = 34; // Result too large
    uint8 constant EAGAIN   = 35; // Resource temporarily unavailable
    uint8 constant EWOULDBLOCK = EAGAIN; // Operation would block
    uint8 constant EINPROGRESS = 36; // Operation now in progress
    uint8 constant EALREADY = 37; // Operation already in progress
    uint8 constant ENOTSOCK = 38; // Socket operation on non-socket
    uint8 constant EDESTADDRREQ = 39; // Destination address required
    uint8 constant EMSGSIZE = 40; // Message too long
    uint8 constant EPROTOTYPE = 41; // Protocol wrong type for socket
    uint8 constant ENOPROTOOPT = 42; // Protocol not available
    uint8 constant EPROTONOSUPPORT = 43; // Protocol not supported
    uint8 constant ESOCKTNOSUPPORT = 44; // Socket type not supported
    uint8 constant EOPNOTSUPP = 45; // Operation not supported
    uint8 constant ENOTSUP    = EOPNOTSUPP; // Operation not supported
    uint8 constant EPFNOSUPPORT = 46; // Protocol family not supported
    uint8 constant EAFNOSUPPORT = 47; // Address family not supported by protocol family
    uint8 constant EADDRINUSE   = 48; // Address already in use
    uint8 constant EADDRNOTAVAIL = 49; // Can't assign requested address
    uint8 constant ENETDOWN     = 50; // Network is down
    uint8 constant ENETUNREACH  = 51; // Network is unreachable
    uint8 constant ENETRESET    = 52; // Network dropped connection on reset
    uint8 constant ECONNABORTED = 53; // Software caused connection abort
    uint8 constant ECONNRESET   = 54; // Connection reset by peer
    uint8 constant ENOBUFS      = 55; // No buffer space available
    uint8 constant EISCONN      = 56; // Socket is already connected
    uint8 constant ENOTCONN     = 57; // Socket is not connected
    uint8 constant ESHUTDOWN    = 58; // Can't send after socket shutdown
    uint8 constant ETOOMANYREFS = 59; // Too many references: can't splice
    uint8 constant ETIMEDOUT    = 60; // Operation timed out
    uint8 constant ECONNREFUSED = 61; // Connection refused
    uint8 constant ELOOP        = 62; // Too many levels of symbolic links
    uint8 constant ENAMETOOLONG = 63; // File name too long
    uint8 constant EHOSTDOWN    = 64; // Host is down
    uint8 constant EHOSTUNREACH = 65; // No route to host
    uint8 constant ENOTEMPTY    = 66; // Directory not empty
    uint8 constant EPROCLIM     = 67; // Too many processes
    uint8 constant EUSERS       = 68; // Too many users
    uint8 constant EDQUOT       = 69; // Disc quota exceeded
    uint8 constant ESTALE       = 70; // Stale NFS file handle
    uint8 constant EREMOTE      = 71; // Too many levels of remote in path
    uint8 constant EBADRPC      = 72; // RPC struct is bad
    uint8 constant ERPCMISMATCH = 73; // RPC version wrong
    uint8 constant EPROGUNAVAIL = 74; // RPC prog. not avail
    uint8 constant EPROGMISMATCH = 75; // Program version wrong
    uint8 constant EPROCUNAVAIL = 76; // Bad procedure for program
    uint8 constant ENOLCK       = 77; // No locks available
    uint8 constant ENOSYS       = 78; // Function not implemented
    uint8 constant EFTYPE       = 79; // Inappropriate file type or format
    uint8 constant EAUTH        = 80; // Authentication error
    uint8 constant ENEEDAUTH    = 81; // Need authenticator
    uint8 constant EIDRM        = 82; // Identifier removed
    uint8 constant ENOMSG       = 83; // No message of desired type
    uint8 constant EOVERFLOW    = 84; // Value too large to be stored in data type
    uint8 constant ECANCELED    = 85; // Operation canceled
    uint8 constant EILSEQ       = 86; // Illegal byte sequence
    uint8 constant ENOATTR      = 87; // Attribute not found
    uint8 constant EDOOFUS      = 88; // Programming error
    uint8 constant EBADMSG      = 89; // Bad message
    uint8 constant EMULTIHOP    = 90; // Multihop attempted
    uint8 constant ENOLINK      = 91; // Link has been severed
    uint8 constant EPROTO       = 92; // Protocol error
    uint8 constant ENOTCAPABLE  = 93; // Capabilities insufficient
    uint8 constant ECAPMODE     = 94; // Not permitted in capability mode
    uint8 constant ENOTRECOVERABLE = 95; // State not recoverable
    uint8 constant EOWNERDEAD   = 96; // Previous owner died
    uint8 constant EINTEGRITY   = 97; // Integrity check failed
    uint8 constant ELAST        = 97; // Must be equal largest errno

    uint8 constant ERESTART    = 1; // restart syscall
    uint8 constant EJUSTRETURN = 2; // don't modify regs, just return
    uint8 constant ENOIOCTL    = 3; // ioctl not handled by this layer
    uint8 constant EDIRIOCTL   = 4; // do direct ioctl in GEOM
    uint8 constant ERELOOKUP   = 5; // retry the directory lookup

    function strerror(uint8 ec) internal returns (string) {
        if (ec == ESUCCESS) return "";
        else if (ec == ENOENT)  return "No such file or directory";
        else if (ec == EEXIST)  return "File exists";
        else if (ec == ENOTDIR) return "Not a directory";
        else if (ec == EISDIR)  return "Is a directory";
        else if (ec == EACCES)  return "Permission denied";
        else if (ec == EPERM)   return "Not owner";
        else if (ec == EINVAL)  return "Invalid argument";
        else if (ec == EROFS)   return "Read-only file system";
        else if (ec == EFAULT)  return "Bad address";
        else if (ec == EBADF)   return "Bad file number: fd is not a valid open file descriptor";
        else if (ec == EBUSY)   return "Device busy";
        else if (ec == ENOSYS)  return "Operation not applicable";
        else if (ec == ESRCH)   return "No such process";
        else if (ec == EINTR)   return "Interrupted system call";
        else if (ec == EIO)     return "Input/output error";
        else if (ec == ENXIO)   return "Device not configured";
        else if (ec == E2BIG)   return "Argument list too long";
        else if (ec == ENOEXEC) return "Exec format error";
        else if (ec == ECHILD)  return "No child processes";
        else if (ec == EDEADLK) return "Resource deadlock avoided";
        else if (ec == ENOMEM)  return "Cannot allocate memory";
        else if (ec == ENOTBLK) return "Block device required";
        else if (ec == EXDEV)   return "Cross-device link";
        else if (ec == ENODEV)  return "Operation not supported by device";
        else if (ec == ENFILE)  return "Too many open files in system";
        else if (ec == EMFILE)  return "Too many open files";
        else if (ec == ENOTTY)  return "Inappropriate ioctl for device";
        else if (ec == ETXTBSY) return "Text file busy";
        else if (ec == EFBIG)   return "File too large";
        else if (ec == ENOSPC)  return "No space left on device";
        else if (ec == ESPIPE)  return "Illegal seek";
        else if (ec == EMLINK)  return "Too many links";
        else if (ec == EPIPE)   return "Broken pipe";
        else if (ec == EDOM)    return "Numerical argument out of domain";
        else if (ec == ERANGE)  return "Result too large";
        else if (ec == EAGAIN)  return "Resource temporarily unavailable";
        else if (ec == EWOULDBLOCK) return "Operation would block";
        else if (ec == EINPROGRESS) return "Operation now in progress";
        else if (ec == EALREADY)    return "Operation already in progress";
        else if (ec == ENOTSOCK)    return "Socket operation on non-socket";
        else if (ec == EDESTADDRREQ) return "Destination address required";
        else if (ec == EMSGSIZE)    return "Message too long";
        else if (ec == EPROTOTYPE)  return "Protocol wrong type for socket";
        else if (ec == ENOPROTOOPT) return "Protocol not available";
        else if (ec == EPROTONOSUPPORT) return "Protocol not supported";
        else if (ec == ESOCKTNOSUPPORT) return "Socket type not supported";
        else if (ec == EOPNOTSUPP || ec == ENOTSUP) return "Operation not supported";
        else if (ec == EPFNOSUPPORT)  return "Protocol family not supported";
        else if (ec == EAFNOSUPPORT)  return "Address family not supported by protocol family";
        else if (ec == EADDRINUSE)    return "Address already in use";
        else if (ec == EADDRNOTAVAIL) return "Can't assign requested address";
        else if (ec == ENETDOWN)      return "Network is down";
        else if (ec == ENETUNREACH)   return "Network is unreachable";
        else if (ec == ENETRESET)     return "Network dropped connection on reset";
        else if (ec == ECONNABORTED)  return "Software caused connection abort";
        else if (ec == ECONNRESET)    return "Connection reset by peer";
        else if (ec == ENOBUFS)       return "No buffer space available";
        else if (ec == EISCONN)       return "Socket is already connected";
        else if (ec == ENOTCONN)      return "Socket is not connected";
        else if (ec == ESHUTDOWN)     return "Can't send after socket shutdown";
        else if (ec == ETOOMANYREFS)  return "Too many references: can't splice";
        else if (ec == ETIMEDOUT)     return "Operation timed out";
        else if (ec == ECONNREFUSED)  return "Connection refused";
        else if (ec == ELOOP)         return "Too many levels of symbolic links";
        else if (ec == ENAMETOOLONG)  return "File name too long";
        else if (ec == EHOSTDOWN)     return "Host is down";
        else if (ec == EHOSTUNREACH)  return "No route to host";
        else if (ec == ENOTEMPTY)     return "Directory not empty";
        else if (ec == EPROCLIM)      return "Too many processes";
        else if (ec == EUSERS)        return "Too many users";
        else if (ec == EDQUOT)        return "Disc quota exceeded";
        else if (ec == ESTALE)        return "Stale NFS file handle";
        else if (ec == EREMOTE)       return "Too many levels of remote in path";
        else if (ec == EBADRPC)       return "RPC struct is bad";
        else if (ec == ERPCMISMATCH)  return "RPC version wrong";
        else if (ec == EPROGUNAVAIL)  return "RPC prog. not avail";
        else if (ec == EPROGMISMATCH) return "Program version wrong";
        else if (ec == EPROCUNAVAIL)  return "Bad procedure for program";
        else if (ec == ENOLCK)        return "No locks available";
        else if (ec == ENOSYS)        return "Function not implemented";
        else if (ec == EFTYPE)        return "Inappropriate file type or format";
        else if (ec == EAUTH)         return "Authentication error";
        else if (ec == ENEEDAUTH)     return "Need authenticator";
        else if (ec == EIDRM)         return "Identifier removed";
        else if (ec == ENOMSG)        return "No message of desired type";
        else if (ec == EOVERFLOW)     return "Value too large to be stored in data type";
        else if (ec == ECANCELED)     return "Operation canceled";
        else if (ec == EILSEQ)        return "Illegal byte sequence";
        else if (ec == ENOATTR)       return "Attribute not found";
        else if (ec == EDOOFUS)       return "Programming error";
        else if (ec == EBADMSG)       return "Bad message";
        else if (ec == EMULTIHOP)     return "Multihop attempted";
        else if (ec == ENOLINK)       return "Link has been severed";
        else if (ec == EPROTO)        return "Protocol error";
        else if (ec == ENOTCAPABLE)   return "Capabilities insufficient";
        else if (ec == ECAPMODE)      return "Not permitted in capability mode";
        else if (ec == ENOTRECOVERABLE) return "State not recoverable";
        else if (ec == EOWNERDEAD)    return "Previous owner died";
        else if (ec == EINTEGRITY)    return "Integrity check failed";
        else if (ec == ELAST)         return "Must be equal largest errno";
        return "unknown error";
    }

    /*function err(uint8 eval, string fmt) internal {
        exit(eval);
    }
    function verr(uint8, string) internal returns (string) {}
    function errc(uint8, uint8, string) internal returns (string) {}
    function verrc(uint8, uint8, string) internal returns (string) {}
    function errx(uint8, string) internal returns (string) {}
    function verrx(uint8, string) internal returns (string) {}
    function warn(string) internal returns (string) {}
    function vwarn(string) internal returns (string) {}
    function warnc(uint16, string) internal returns (string) {}
    function vwarnc(uint16, string) internal returns (string) {}
    function warnx(string) internal returns (string) {}
    function vwarnx(string) internal returns (string) {}
    function err_set_file(bytes) internal returns () {}
    function err_set_exit(void (* _Nullable)(uint16)) internal returns () {}
    function  *   __error() internal returns () {}*/

}