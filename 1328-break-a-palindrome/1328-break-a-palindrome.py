class Solution:
    def breakPalindrome(self, palindrome: str) -> str:
        
        str_list = list(palindrome)
        
        cond = 0
        
        length = int(len(str_list) // 2)
        
        if len(palindrome) == 1:
            return ""
        for i in range(length):
            if str_list[i] != 'a':
                str_list[i] = 'a'
                cond = 1
                break
        if cond == 0 and str_list[len(str_list)-1] == 'a':
            str_list[len(str_list)-1] = 'b'
            cond = 1
        
        if cond == 1:
            return ''.join(str_list)
        else:
            ""
             
                