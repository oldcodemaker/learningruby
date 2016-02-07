puts "Please input a 4 digit year and I'll tell you if it is a leap year or not."
def leap_year
input_year = 0
input_year = gets.to_i
  if input_year <= 0 
  	puts "Please try inputting 4 digits again!"
  else
    puts "You input #{input_year}"
  end
#Test for divisible by 4 AND NOT divisible by 100 OR ELSE divisible by 400
  if (( input_year % 4 == 0 ) && !(input_year % 100 == 0) || ( input_year % 400 == 0 ))
    "#{input_year} is a leap year. The number of minutes in a leap year is #{60 * 24 * 366} minutes "
  else
    "#{input_year} is NOT a leap year. The number of minutes in a non-leap year is #{60 * 24 * 365} minutes "
  end
end
puts leap_year
Enter file contents here
