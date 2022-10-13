class Solution:
    def firstMissingPositive(self, nums: List[int]) -> int:
        
        nums.sort()
        num = 0
        
        num_dict = {}
        
        for i in nums:
            if i not in num_dict:
                num_dict[i] = 1
            else:
                num_dict[i] = num_dict[i] + 1
        
        
        for i in range(1,nums[len(nums)-1]+1):
            if i not in num_dict:
                num = i
                break
                
        if num == 0:
            num = nums[len(nums)-1] + 1
            if num <= 0 :
                return 1
            else:
                return num
        elif num < 0:
            return 1
        else:
            return num