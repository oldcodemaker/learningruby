#Chalenge 1 - Year, Months, etc.
age_in_seconds = 0
age_in_months = 0
age_in_years = 0
examples = [979000000, 2158493738, 24644023, 1270166272, 1025600095]
puts "Please type s to input age in seconds or type e to choose the examples"
choice = gets.chomp
while choice != "s" and choice != "e" do
  puts "Please type s to input age in seconds or type e to choose the examples"
  choice = gets.chomp
end

if choice == "s" 
  puts "Please type in the number of seconds you would like age for"
  age_in_seconds = gets.chomp
  age_in_seconds = age_in_seconds.to_i
  age_in_months = ((((age_in_seconds / 60) /60) /24) / 30.41)
  age_in_years = age_in_months / 12
  age_in_years = age_in_years.to_i
  age_in_months = (age_in_years % 12)
  age_in_months = age_in_months.to_i 
  puts "Age is approximately: #{age_in_years} Years and #{(age_in_months)} Months"
else
   examples.each do |i|
   i
   age_in_seconds = i
   age_in_seconds = age_in_seconds.to_i
   age_in_months = ((((age_in_seconds / 60) /60) /24) / 30.41)
   age_in_years = age_in_months / 12
   age_in_years = age_in_years.to_i
   age_in_months = (age_in_years % 12)
   age_in_months = age_in_months.to_i 
   puts " Age is approximately: #{age_in_years} Years and #{(age_in_months)} Months"
 end

end


