puts "Please input a 4 digit year and I'll tell you if it is a leap year or not."
input_year = 0
input_year = gets.to_i
  if input_year <= 0 
  	puts "Please try inputting 4 digits again!"
  else
    puts "You input #{input_year}"
  end
#Test for divisible by 4 AND NOT divisible by 100 OR ELSE divisible by 400
  if (( input_year % 4 == 0 ) && !(input_year % 100 == 0) || ( input_year % 400 == 0 ))
    puts "#{input_year} is a leap year."
  else
    puts "#{input_year} is NOT a leap year."
  end

