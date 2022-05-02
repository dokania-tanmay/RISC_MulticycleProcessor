f = open('tracefile.txt', "w+")
k = 0
for i in range(0, 5):
    if k==0:
        f.write("0 0\n")
        k = 1
    else:
        f.write("0 1\n")
        k = 0  
f.write("1 1\n")
for i in range(0, 60):
    if k==0:
        f.write("0 0\n")
        k = 1
    else:
        f.write("0 1\n")
        k = 0        