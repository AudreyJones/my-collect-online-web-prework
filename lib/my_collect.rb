def my_collect(array)
# if...else conditionals allow for flexibility...preventing the method from breaking without an argument
  if block_given?
# While loop starts iteration through the array starting from the i = 0 counter
    i = 0
    while i < array.length
# The below line yields the elements of the passed-in array to the block
    yield(array[i])
    i = i + 1
    end
  else
    "No block was given!"
  end
# Return the new/modified array!
  array
end

# QUESTION: Separate calls on #my_collection for each array? Or should we make the method call an if...else and more general like the method definition itself?

my_collect([languages]) do |array|
  languages_collection = []
  languages_collection << array.upcase
end

my_collect([students]) do |array|
  students_collection = []
  students_collection << array.capitalize
end