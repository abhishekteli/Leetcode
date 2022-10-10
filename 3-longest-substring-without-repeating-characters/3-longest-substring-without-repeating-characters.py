class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        seen = {}
        left = 0
        right = 0
        answer = 0
        length = len(s)        
        while left < length and right < length:
            current = s[right]            
            if current in seen:
                left = max(left, seen[current] + 1)
            seen[current] = right
            answer = max(answer, right - left + 1)
            right += 1
        return answer

        