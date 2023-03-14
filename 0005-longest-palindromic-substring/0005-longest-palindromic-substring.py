class Solution:
    def longestPalindrome(self, s: str) -> str:
        n = len(s)
        max_len = 0
        start = 0

        for i in range(n):
            # check odd-length palindromes
            left = right = i
            while left >= 0 and right < n and s[left] == s[right]:
                if right - left + 1 > max_len:
                    max_len = right - left + 1
                    start = left
                left -= 1
                right += 1

            # check even-length palindromes
            left = i
            right = i+1
            while left >= 0 and right < n and s[left] == s[right]:
                if right - left + 1 > max_len:
                    max_len = right - left + 1
                    start = left
                left -= 1
                right += 1

        return s[start:start+max_len]
