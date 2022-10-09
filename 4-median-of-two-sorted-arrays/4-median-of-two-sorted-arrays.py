class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        
        nums1 = nums1 + nums2
        nums1.sort()
        
        h = len(nums1) - 1
        l = 0
        m = (h + l) // 2
        
        
        if len(nums1) % 2 == 0:
            return (nums1[m] + nums1[m+1]) / 2
        else:
            return nums1[m]
        