def my_collect(array)
# if...else conditionals allow for flexibility...preventing the method from breaking without an argument
# While loop starts iteration through the array starting from the i = 0 counter
# The below line yields the elements of the passed-in array to the block
 new_collection = []
    i = 0
    while i < array.length
    new_collection << yield(array[i])
    i = i + 1
    end

# Return the new/modified array!
  new_collection
end