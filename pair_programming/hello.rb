# doctest: I can greet the world
# >> hello
# => "Hello World!"
# doctest: I can greet someone personally
# >> hello("Santa")
# => "Hello Santa!"
# Default values for arguments can be done in the method argument list as
# showing in our hello method.  An assignment when given, will allow for no
# argument to be given and a default value given instead.
# doctest: I can greet someoen else
# >> hello 'Michael'
# => "Hello Michael!"
# doctest: I can ask if someone is there.
# >> hello('Vic', '?')
# => "Hello Vic?"
def hello(name='World', punctuation='!')
  "Hello #{name}#{punctuation}"
end

