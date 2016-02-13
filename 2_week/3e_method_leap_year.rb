# Create a leap_year? method that is given a year.
# Report how many minutes are in the given year, and if it is a leap or not.

# doctest: I have a leap_year? method that is given a year
# >> leap_year?(2000)
# => true
# doctest: leap_year? 1999 responds with false
# >> leap_year?(1999)
# => false
# doctest: leap_year? 1900 responds with false
# >> leap_year?(1900)
# => false
# doctest: 1996 is a leap year
# >> leap_year?(1996)
# => true
#

def leap_year?(year)
  (year % 400).zero? or not (year % 100 ).zero? and (year % 4).zero?
end

# doctest: The nymber of minutes in this year is year*60*24*365  or 366
#          depending upon if year is standard or leap
# >> minutes_in_a_year(1999)
# => 525600
# doctest: Leap year 2000 has the correct number of minutes
# >> minutes_in_a_year(2000)
# => 527040
def minutes_in_a_year(year)
  days_in_year = leap_year?(year) ? 366 : 365
  days_in_year * minutes_in_a_day
end

def minutes_in_a_day
  60 * 24
end

# doctest: is_or_not will give me an appropriate string "is" or "is not"
# >> is_or_not(true)
# => 'is'
# doctset: is not
# >> is_or_not(false)
# => 'is not'
def is_or_not(boolean)
  boolean ? 'is' : 'is not'
end

if __FILE__ == $PROGRAM_NAME
  puts "What year do you want to find out about?"
  your_year = gets.to_i
  puts "#{your_year} #{is_or_not(leap_year?(your_year))} a leap year"
  puts "Your year has #{minutes_in_a_year(your_year)} minutes."

  years = [1900, 1901, 1904, 1996, 2000]
  years.each do |year|
    puts "Year #{year} #{is_or_not(leap_year?(year))} a leap year and has #{minutes_in_a_year(year)} minutes."
  end
end
