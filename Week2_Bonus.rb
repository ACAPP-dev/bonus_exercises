require 'pry'

def string_flip(string,flip_times)
final_array = []
string_array = string.split(//)

flip_times.times do
  even_array = string_array.map.with_index {|character, index|
      character if index.even?}

  odd_array = string_array.map.with_index {|character, index|
      character if index.odd?}

  final_array = (even_array + odd_array).compact
  string_array = final_array
end

final_array.join
#binding.pry
end

p string_flip("qwertyuio", 2)
