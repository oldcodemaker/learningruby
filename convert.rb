# convert.rb for challenge 2
def convert(temperature, scale)
  case scale
  when 'f', 'F'
    "#{temperature} Fahrenheit = #{(temperature - 32) * 5.0 / 9.0} C and #{((temperature + 459.67) * (5.0 / 9.0))} K"
  when 'c', 'C'
    "#{temperature} Celcius = #{((temperature * 9.0 / 5.0) + 32)} F and #{temperature + 273.15} K"
  when 'k', 'K'
    "#{temperature} Kelvin = #{((temperature * 9.0 / 5.0) - 459.67)} F and #{temperature - 273.15} C"
  else
    "We don't know how to handle that temperature scale"
  end
end

if __FILE__ == $PROGRAM_NAME
  puts 'Some automated sample runs:'
  puts '+-' * 30
  [
    [-40, 'c'], [0, 'f'], [233.15, 'k'],
  ].each do |t, s|
    puts convert(t, s)
  end
  puts '+-' * 30
  puts 'End of automated sample runs'

  puts 'Which Temperature Scale are you currently using?'
  puts 'F for fahrenheit, C for Celcius, or K for Kelvin'
  scale = gets.chomp
  puts 'What temperature do you have?'
  temperature = gets.to_f
  puts convert(temperature, scale)
end
