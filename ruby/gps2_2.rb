=begin
Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)
=end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Initialize our hash by assigning a variable to an empty hash
  # set default quantity (We'll make this 1)
  # print the list to the console [can you use one of your other methods here?]
# output: A hash, so that we can store key value pairs. 


def create_list(items)
 list = {}
  item_array = items.split

  item_array.each do |element|
  	list[element] = 1
  end
  return list
end

my_list = create_list("Lemonade Tomatoes Onions Ice Cream")
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Use shovel (<<) to put key or we use another course of action to add items to array
# output: Hash with new item added to list
def add_item(item, quantity, list)
	list[item] = quantity
  return list
end
# Method to remove an item from the list
# input: delete the given key form the hash 
# steps: identify the key you'd like to delete and delete it from the hash
# output: hash with item removed 
def remove_item(item, list)
  return list
end
# Method to update the quantity of an item
# input: hash, key
# steps: call hash and key and assign new value
# output: hash with item updated
def update_quantity(key, quantity, list)
  return list
end
# Method to print a list and make it look pretty
# input: hash 
# steps: iterate through key/value pairs
# output: printed hash
def print_list(list)
	puts list
end

my_list = create_list("Lemonade Tomatoes Onions Ice Cream")
add_item("Coffee", 3, my_list)
print_list(my_list)

