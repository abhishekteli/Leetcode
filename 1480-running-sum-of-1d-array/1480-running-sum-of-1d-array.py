class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        sum = 0
        running_sum_list = []
        for i in nums:
            sum = sum + i
            running_sum_list.append(sum)
        
        return running_sum_list
            