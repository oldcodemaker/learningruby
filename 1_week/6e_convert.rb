# Exercise 6
#
# Write a method called convert that takes one argument which is a temperature
# in degrees Fahrenheit. This method should return the temperature in degrees
# Celsius.
#
# To format the output to say 2 decimal places, we can use the Kernel's format
# method. For example, if x = 45.5678 then format("%.2f", x) will return the
# string 45.57. Another way is to use the round function as follows:

# doctest: temperature 212 F should return 100 C
# >> convert(212)
# => 100
# doctest: temperature 32 F should return 0 C
# >> convert(32)
# => 0
# doctest: -40 is -40 for both scales
# >> convert(-40)
# => -40
# doctest: 98.6 should be 37 C
# >> convert(98.6)
# => 37
# doctest: 98 should not be 37 C
# >> convert(98).round(4)
# => 36.6667
def convert_C_to_F(temperature)
  (temperature - 32.0) * 5 / 9
end

alias :convert :convert_C_to_F

if __FILE__ == $PROGRAM_NAME  # $0
  puts "What temperature in Fahrenheit would you like to convert to Celsius?"
  temperature_F = gets.to_f
  formatted_string = format(
    "%.2fC equals %.2fC",
    temperature_F, convert_C_to_F(temperature_F)
  )
  puts formatted_string
end

