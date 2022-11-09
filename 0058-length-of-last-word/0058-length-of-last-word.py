class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        s = s.rstrip()
        list_s = s.split(" ")
        return len(list_s[len(list_s)-1])