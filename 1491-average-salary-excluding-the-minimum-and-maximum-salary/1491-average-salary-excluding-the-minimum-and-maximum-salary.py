class Solution:
    def average(self, salary: List[int]) -> float:
        salary = sorted(salary)
        return float((sum(salary[1:len(salary)-1])/len(salary[1:len(salary)-1])))