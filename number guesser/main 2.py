import random
y = ""
x = random.randint(1,100)
z=1
y=int(input("Enter Input Between 1 and 100:"))
while(y!=x):
  if(y>x):
    print("Too high!")
    y=int(input("Enter Input:"))
    z=z+1
  else:
    print ("Too low!")
    y=int(input("Enter Input:"))
    z=z+1
if(y==x):
  print("Congratulations! You did it in", z, "Attempts")