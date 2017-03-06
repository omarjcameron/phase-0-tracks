

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define method that takes in a string
  # create an empty hash to which will become our list
  # choose a default quantity - 1 seems to make sense. 
  # Iterate through the array and add each item to our empty hash
  # print the list to the console [can you use one of your other methods here?]

# output: This is going to be a hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: def a method that takes in a hash, item name and quantity in the parameter. Since the quantity is optional we can do that is a number of ways
# In the body of the method, we'll want to add the input item and value to the hash and then print the has.
# output: The same list that has the newly added array and quantity

# Method to remove an item from the list
# input: The list and the item you'd like to remove
# steps: def a method that takes in a list and the item 
# In the body of the method, call the delete method on the hash and pass the item argument into the parentheses. print the remaining list. 
# output: A list that doesn't have the item. 

# Method to update the quantity of an item
# input: List, item you want to update, new quantity
# steps: def method that takes in a list and the item you'd like to update as well as the new quantity.
# In the body of the methold 
# output: The list with the updated quantity on the given list

# Method to print a list and make it look pretty
# input: list 
# steps: iterate through the list and print each hash key pair 
# output: the printed list 



def create_list(string)
  my_list = {}
  array = string.split
array.each do |item|
  my_list[item] = 1
end
 return  my_list
 print_list(my_list)
end

def add_item(list, item, *quantity)
  list[item] = quantity
   return list
end

def remove_item(list, item)
  list.delete(item)
  list.each do |key, value|
  end
end

def update_quantity(list, item, new_quanity)
  list[item] = new_quanity
   list.each do |key, value|
  end
end

def print_list(list)
  list.each do |key, value|
    puts "Here are the items and quantities #{key}: #{value}"
  end
end

# Driver Code

shopping_list = create_list("Bananas Cheese Tomatoes Frankfurters")

new_items = {"Lemonade" => 2, "Onions" => 1, "Ice Cream" => 4}

new_items.each do |item, quantity|
  shopping_list = add_item(shopping_list, item, quantity)
end
p shopping_list

=begin
# Please note that I initially added all of these one by one and then decided to refactor above.

shopping_list = add_item(shopping_list, "Lemonade", 2)
shopping_list = add_item(shopping_list, "Tomatoes", 3)
shopping_list = add_item(shopping_list, "Onions", 1)
shopping_list = add_item(shopping_list, "Ice Cream", 4)
=end
shopping_list = remove_item(shopping_list, "Lemonade")
shopping_list = update_quantity(shopping_list, "Ice Cream", 1)
print_list(shopping_list)

=begin
Reflect (Release 4)

So I learned a lot from this challenge. My pair and I had trouble with it during the actual GPS and we decided to finish it up on our own later. While were both tired and out of it, it was also clear that we were missing some of the core concepts. I definitely knew that I needed to go back and practice defining methods, and really solidifying my understanding of hashes. I reread our Week 5 materials, and took a few courses online and came back with a better foothold on the material, which made me feel more comfortable in attacking this exercise. 

What did you learn about pseudocode from working on this challenge? Pseudocoding is a life saver. When you have your blueprint written out, it makes it easy to just do it. Why would I not write the blueprint before building the house?

What are the tradeoffs of using arrays and hashes for this challenge? Hashes seems like the idea data structure here since both the key data pairs have some implicit meaning and or informative purpose here. Additionally, there isn't a need for order in our list so hash seems ideal.

What does a method return? The last evaluated expression.

What kind of things can you pass into methods as arguments? You can pass in many different types of intergers, objects, such as strings, variables, arrays, hashes and even other methods!

How can you pass information between methods?
You can if you call a method and save that call to a variable. 

What concepts were solidified in this challenge, and what concepts are still confusing?
The use of hashes for sure. And pseudocoding. I'm thankful that I powered through this assignment. 


