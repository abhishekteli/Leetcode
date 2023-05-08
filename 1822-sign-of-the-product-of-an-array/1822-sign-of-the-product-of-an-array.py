class Solution:
    def arraySign(self, nums: List[int]) -> int:
        product = reduce(lambda x,y: x*y, nums)
        if product > 0:
            return 1
        elif product < 0:
            return -1
        else:
            return 0
        