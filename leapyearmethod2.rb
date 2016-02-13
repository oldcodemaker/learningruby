#!/usr/bin/env ruby

DAYS_IN_YEAR = { leap: 366, standard: 365 }
MINUTES_IN_A_DAY = 60 * 24

def prompt_for_year
  puts "Please input a 4 digit year and I'll tell you if it is a leap year or not."
  gets.to_i
end

# doctest: leap_year?(2000) must return true
# >> leap_year? 2000
# => true
# doctest: leap_year 1999 should (must) return false
# >> leap_year? 1999
# => false
# doctest: year 1900 is not a leap year
# >> leap_year? 1900
# => false
# doctest: 2004 is a leap year but not a century year
# >> leap_year? 2004
# => true
def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

# doctest: If I give minutes_in_a_year the year 2000 I should get 527040
# >> minutes_in_a_year(2000)
# => 527040
# doctest: A standard year has 525600 minutes
# >> minutes_in_a_year(1999)
# => 525600
def minutes_in_a_year(year)
  MINUTES_IN_A_DAY * DAYS_IN_YEAR[leap_year?(year) ? :leap : :standard]
end

if __FILE__ == $PROGRAM_NAME
  answer = leap_year?(input_year = prompt_for_year)
  puts "#{input_year} is a leap year: #{answer}"
  puts "There are #{minutes_in_a_year(input_year)} minutes in your year"
end
