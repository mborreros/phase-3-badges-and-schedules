# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  name_array = []
  for name in array do
     name_array << badge_maker(name)
   end
   name_array
end

def assign_rooms(array)
  room_array = []
  array.each_with_index { |name, index|
  text = "Hello, #{name}! You'll be assigned to room #{index+1}!"
  room_array << text
  }
  room_array
end

def printer(array)
  first_array = batch_badge_creator(array)
  second_array = assign_rooms(array)
  for element in first_array do
    puts element
  end
  for element in second_array do
    puts element
  end
end