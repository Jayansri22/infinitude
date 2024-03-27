""""list=[1,2,3,4]
print(tuple(list))"""

"""def greet(name ="world"):
    print("hello" + name)

greet("world")"""

def add(*args):
    total=0
    for num in args:
        total+=0
    return total
print("sum:", add(1,2,3))
print("sum:", add(1,2,3,4,5))


