b=99;
c='bottles of beer'
d='Take 1 down, pass it around,'
e='bottle of beer'
f='on the wall,'
while (b>0):
  if (b>1):
    print (b, c, f, b, c)
    b=b-1
    print (d, b, c, f)
  else:
    print ("1", e, f, "1", e, d, 'no', c, f)
    b=b-1