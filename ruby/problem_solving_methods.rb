# We want to create a method here that will take in arguments of am array and an integer. We then start by creating our array, and designating an integer to test. 
# We'll start by defining our method as 'search array'
# Then we'll instill our loop - a while loop seems simple enough here but we can use another loop if need be
# We'll want to create an index and set it equal to '0', to desingate where we'd like to start. 
# Then we can loop through by saying while our index is less than the length of the array, we want to to evaulate whether or not the item at a given position is equal to the integer we're passing in our argument. If it is, then we want to return that index. 
# We'll increment our method by "1" until we've reached the end of the array. 

def search_array(arr, int)
	i = 0
	while i < arr.length
		if arr[i] == int
			return i 
		end
	i += 1
	end
end

cheese = [5, 3, 8, 10, 7]

p search_array(cheese, 7)

p search_array(cheese, 23)


# if I wanted to do this via an each call, how would I set that up? 



#Calculate Fibonacci Numbers 
#Create a method fib(n) that take an integer as an argument and return an array of fibonacci sequence.
#Get the fibonacci sequence of  the integer "n"
#If n is 0 return  0 and if n is 1 return 1.
#For n > 1 , add fib(n - 1) + fib(n - 2).
#Example : fib (6)  
#  0   +  1   = 1
#  1   +  1   = 2
#  1   +  2   = 3
#  2   +  3   = 5
#                                              fib_array << c
#method:                                            [0,1]
# a = 0 ,b = 1 ,c = (0 + 1) a + b                    [1]
# a = b (1); b = c (1) ; c = 2                       [2]
#a = b (1);  b = c(2) ; c = 3                        [3]
# a = (2);  b=(3) ; c = 5  (a+b)                     [5]
def fib(n)
    fib_array = [0]
    a = 0
    b = 1
    if n >= 1
        fib_array << 1
    end 
    while fib_array.length < n
        if  n > 1
          c = a + b  
          fib_array << c  
          a = b   
          b = c  
        end
    end 
    return fib_array  
end
p fib(2)
p fib(100)
p fib(6)
p fib(0)

# Bubble Sort - Sorting Function 
# Create a function that evaluates whether the array is in ascending order of number value, meaning the items are listed from smallest to greatest number 
# We want to loop through the array, until all items are sorted in that manner
# We need to swap if the current element is less than the previous element. 
# If it is greater than the previous element, we can move on to the next element. Again, we'll loop through until all elements are listed in increasing order 


def bubble_sort(array)# [2,1,3,5,4,6]
    n = array.length + 1
    loop do 
        swapping = false 
        (n-1).times do |i|
            if i > 0 && array[i] < array[i - 1]
             array[i - 1], array[i] = array[i], array[i - 1]
             swapping = true
            end
        end 
        break if not swapping
    end
    array 
end 
arr = [7,6,2,3,5,4,1]
p bubble_sort(arr)


