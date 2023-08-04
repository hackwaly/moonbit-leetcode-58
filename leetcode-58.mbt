/// @param {String} s
/// @return {Int}
pub func lengthOfLastWord(s : String) -> Int {
    var j = s.length() - 1;
    var l = 0;
    var inBlank = true;
    while (j >= 0) {
        c := s.get(j);
        if (c == ' ') {
            if (inBlank.not()) {
                return l;
            }
        } else {
            if (inBlank) {
                inBlank = false;
            }
            if (inBlank.not()) {
                l = l + 1;
            }
        }
        j = j - 1;
    }
    return l
};

func init {
  lengthOfLastWord("Hello world").print()
}
