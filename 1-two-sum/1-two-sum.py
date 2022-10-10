class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        new_list = [] 
        flag = 0
        
        for i in range(len(nums)):
            for j in range(i+1,len(nums)):
                sum = nums[i] + nums[j] 
                if sum == target:
                    new_list.append(i)
                    new_list.append(j)
                    flag = 1
                    break
            if flag == 1:
                break
                
        return new_list