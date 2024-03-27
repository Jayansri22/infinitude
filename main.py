list=[14, " apple", 78, "mango", 17, "orange", 16, "kiwi", 22, "car"]
print(list)
slice_till_8=list[:8]
print(slice_till_8)
element_at_index8 = list[8]
print(element_at_index8)
numbers=[x for x in list if isinstance(x,(int))]
strings=[x for x in list if isinstance(x,str)]
numbers.sort()
strings.sort()
sorted_list=numbers+strings
print("sorted list:", sorted_list)
list.reverse()
print("the reverse list:", list)
def reversed_string(string):
    reversed_string=string[::-2]
    return reversed_string
input_string=input("Enter a string:")
reverse_string=reversed_string(input_string)
print("Reversed string is:", reverse_string)