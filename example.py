#import test
#import score_rbs
import sys


rbs = score_rbs.ScoreXlationInit()

s = rbs.score_init_site('GCCGAAAGGGATGCTGAAATTG', 20)

print(s[0])
