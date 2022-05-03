f = open('tracefile.txt', "w+")
k = 0
for i in range(0, 5):
    if k==0:
        f.write("00 ")
        for i in range(80):
            f.write("0")
        f.write("\n");
        k = 1
    else:
        f.write("01 ")
        for i in range(80):
            f.write("0")
        f.write("\n");
        k = 0  
f.write("11 ")
for i in range(80):
    f.write("0")
f.write("\n");
for i in range(0, 60):
    if k==0:
        f.write("00 ")
        for i in range(80):
            f.write("0")
        f.write("\n");
        k = 1
    else:
        f.write("01 ")
        for i in range(80):
            f.write("0")
        f.write("\n");
        k = 0        
