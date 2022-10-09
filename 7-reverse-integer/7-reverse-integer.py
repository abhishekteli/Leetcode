class Solution:
    def reverse(self, x: int) -> int:
        y = str(x).rstrip("0").lstrip("-")[::-1]
        
        if len(str(x)) == 1:
            return x
        else:
            if "-" in str(x):
                y = "-" + y
        
        if  2147483647 < int(y) or int(y) < -2147483648 :
            return 0
        else:
            return y