class Solution:
    def predictPartyVictory(self, senate: str) -> str:
        radiant, dire = [], []
        for i, s in enumerate(senate):
            if s == 'R':
                radiant.append(i)
            else:
                dire.append(i)

        n = len(senate)
        i, j = 0, 0
        while len(radiant) > 0 and len(dire) > 0:
            if radiant[0] < dire[0]:
                radiant.append(radiant[0] + n)
            else:
                dire.append(dire[0] + n)
            radiant.pop(0)
            dire.pop(0)

        return "Radiant" if len(radiant) > 0 else "Dire"

                    
                        
                
        