def fibonocci(n):
    if n <= 1:
        return n
    else:
        return fibonocci(n-1) + fibonocci(n-2)

n_terms=10
print("Fibonocci series:")
for i in range(n_terms):
    print(fibonocci(i))





