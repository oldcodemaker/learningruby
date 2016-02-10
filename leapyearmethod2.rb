def leap_year?
puts "Please input a 4 digit year and I'll tell you if it is a leap year or not."
input_year = gets.to_i
  if (( input_year % 4 == 0 ) && !(input_year % 100 == 0) || ( input_year % 400 == 0 ))
    "TRUE. The number of minutes in a leap year is #{60 * 24 * 366} minutes "
  else
    "FALSE. The number of minutes in a non-leap year is #{60 * 24 * 365} minutes "
  end
end
puts leap_year?
