require "pry"

def strong?(number)
  counter = 0
  factorial_counter = 0
  #binding.pry
  digit_array = number.digits.sort
  #binding.pry

  factorial_array = []
  factorial_sum = 0
  while counter < digit_array.size do

    # make array of factorial digits

    factorial_counter = digit_array[counter]

    while factorial_counter > 0 do
      factorial_array << factorial_counter
      factorial_counter -= 1
      factorial_array
    end
    # multiply array together  eg. 5: 5 * 4 * 3 * 2 * 1 = 120

   factorial_reduce = factorial_array.reduce(:*)

   if factorial_reduce == nil
     counter += 1
   else

     factorial_sum = factorial_sum + factorial_reduce
     factorial_array = []
    counter += 1
  end

  end
  # puts "Factorial of the digits is: #{factorial_sum}"
  number == factorial_sum ? true : false
end

def strong_range(number_start, number_end)
 counter = 0
 factorial_array = []

 while number_start <= number_end do
   if strong?(number_start) == true
     factorial_array << number_start
     number_start += 1
   else
     number_start += 1

   end

 end
 factorial_array
end


 #puts "Enter a number for the Strong Number Calculation"
 #number = gets.to_i

 #p strong?(number)
p strong_range(0, 1000)
