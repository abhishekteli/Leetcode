class Solution:
    def romanToInt(self, s: str) -> int:
        symbol_values = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000,
        }
        total = 0
        for i in range(len(s)):
            value = symbol_values[s[i]]
            if i < len(s) - 1 and value < symbol_values[s[i+1]]:
                total -= value
            else:
                total += value
        return total
