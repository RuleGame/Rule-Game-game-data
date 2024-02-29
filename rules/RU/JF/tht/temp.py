import os
import random
from itertools import permutations

numbers = [0, 1, 2, 3]
all_combs = list(permutations(numbers))
# for i, comb in enumerate(all_combs):
#     print(f"Combination {i+1}: {comb}")

selected_combs = random.sample(all_combs, 8)
chosen_combs = random.sample(all_combs, 8)


# for i, comb in enumerate(selected_combs):
#             new_rule = f"(*,*,RED,*,[{comb[0]}]) (*,*,BLUE,*,[{comb[1]}]) (*,*,YELLOW,*,[{comb[2]}]) (*,*,BLACK,*,[{comb[3]}])"

os.chdir(os.getcwd())
listfiles = os.listdir()

for filename, comb in zip(sorted(f for f in listfiles if f.startswith('c_rule')), selected_combs):
    with open(filename, "r+") as file:
        content = file.read()
        #print(content)
        file.seek(0)
        file.truncate()
        new_rule = f"(*,*,RED,*,[{comb[0]}]) (*,*,BLUE,*,[{comb[1]}]) (*,*,YELLOW,*,[{comb[2]}]) (*,*,BLACK,*,[{comb[3]}])"
        file.write(new_rule)
        file.seek(0)
        content = file.read()
        print(content)
        file.close()

for filename, comb in zip(sorted(f for f in listfiles if f.startswith('s_rule')), chosen_combs):
    with open(filename, "r+") as file:
        content = file.read()
        #print(content)
        file.seek(0)
        file.truncate()
        new_rule = f"(*,square,*,*,[{comb[0]}]) (*,triangle,*,*,[{comb[1]}]) (*,circle,*,*,[{comb[2]}]) (*,star,*,*,[{comb[3]}])"
        file.write(new_rule)
        file.seek(0)
        content = file.read()
        print(content)
        file.close()