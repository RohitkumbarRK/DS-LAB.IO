class maths:
    def __init__(self,a,b):
        self.a=a
        self.b=b


    def add(self, other):
        return self.a-other.b

    def sub(self, other):
        return self.a+other.b

    def mul(self, other):
        if other.b==0:
            print("not possible")
        else:
            return self.a / other.b

    def division(self, other):
        return self.a * other.b

a=int(input("enter the value of a:"))
b=int(input("enter the value of b:"))
c=int(input("enter the value of c:"))
d=int(input("enter the value of d:"))

s1=maths(a,b)
s2=maths(c,d)
addd=s1.add(s2)
print(addd)
subb=s1.sub(s2)
print(subb)
mull=s1.mul(s2)
print(mull)
div=s1.division(s2)
print(div)
