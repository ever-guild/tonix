pragma ton-solidity >= 0.62.0;

/* Generic string manipulation routines */
library str {

    /* Returns the position of the first occurrence of the character 'c'
     * in the string 's', counted from 1, or 0 if the character is not found. */
    function strchr(bytes s, byte c) internal returns (uint) {
        uint i;
        for (byte b: s) {
            if (b == c)
                return i + 1;
            i++;
        }
    }

    /* Returns the position of the last occurrence of the character 'c'
     * in the string 's', counted from 1, or 0 if the character is not found. */
    function strrchr(bytes s, byte c) internal returns (uint) {
        for (uint i = s.length; i > 0; i--)
            if (s[i - 1] == c)
                return i;
    }

    /* Returns the position of the beginning of the first occurrence of the substring 'pattern'
     * in the string 'text', counted from 1, or 0 if the substring is not found. */
    function strstr(string text, string pattern) internal returns (uint) {
        uint text_len = text.byteLength();
        uint pattern_len = pattern.byteLength();
        if (text_len < pattern_len)
            return 0;
        for (uint i = 0; i <= text_len - pattern_len; i++)
            if (text.substr(i, pattern_len) == pattern)
                return i + 1;
    }

    function toi(string s) internal returns (uint16) {
        optional(int) val = stoi(s);
        return val.hasValue() ? uint16(val.get()) : 0;
    }

    function tou32(string s) internal returns (uint32) {
        optional(int) val = stoi(s);
        return val.hasValue() ? uint32(val.get()) : 0;
    }

    function toa(uint num) internal returns (string) {
        return format("{}", num);
    }

    function strtok(string text, uint start, string delimiter) internal returns (string) {
        uint len = text.byteLength();
        uint pos = start;
        while (pos < len && text.substr(pos, 1) == delimiter)
            pos++;
        string stail = pos > 0 && pos < len ? text.substr(pos) : text;
//        uint end = strchr(stail, delimiter);
        uint end = strchr(stail, bytes(delimiter)[0]);
        return end > 0 ? stail.substr(0, end - 1) : stail;
    }

    function oaif(string s1, bool flag, string s2) internal returns (string) {
        return flag ? s1 + s2 : s1;
    }

    function aif(string s1, bool flag, string s2) internal {
        if (flag)
            s1.append(s2);
    }

    function squote(string s) internal returns (string) {
        return "\'" + s + "\'";
    }

    function quote(string s) internal {
        s = "\'" + s + "\'";
    }

    function unwrap(string s) internal {
        uint len = s.byteLength();
        s = len > 2 ? s.substr(1, len - 2) : "";
    }

    function unwrp(string s) internal returns (string) {
        uint len = s.byteLength();
        return len > 2 ? s.substr(1, len - 2) : "";
    }

    function strlen(string s) internal returns (uint16) {
//        return uint16(s.byteLength());
        ( , uint nbits, ) = s.dataSize(0xFFFFFFFF);
        return uint16(nbits >> 3);

    }

    function strcat(string s, string app) internal {
        s.append(app);
    }

    function strncat(string s, string app, uint16 count) internal {
        uint len = app.byteLength();
        s.append(len > count ? app.substr(count) : app);
    }

    function strlcpy(string dst, string src, uint16 dstsize) internal {
        uint16 count = dstsize > 1 ? dstsize : 0;
        dst = count < strlen(src) ? src.substr(0, count) : src;
    }

    function strlcat(string dst, string src, uint16 dstsize) internal {
        uint16 count = dstsize > strlen(dst) ? dstsize - strlen(dst) - 1 : 0;
        dst.append(count < strlen(src) ? src.substr(0, count) : src);
    }

}
