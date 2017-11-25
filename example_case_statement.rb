# Get a number to work on
print 'Please enter a number between 0 and 20: '
number = gets.chomp.to_i
puts 'Hang on...'

# Stop
raise 'That was a bad number' unless (number.zero? || number.positive?) && number < 21
raise 'That was a bad number' unless !number.negative? && number < 21
raise 'That was a bad number' unless number >= 0 && number < 21
raise 'That was a bad number' if number.negative? || number > 20
raise 'That was a bad number' unless (0..20).to_a.include?(number)
#raise 'That was a bad number' if (0..20).to_a.exclude?(number) # Rails only

print 'The number you entered is '

# Using a case statement
translation = case number
                when 0
                  'zero'
                when 1
                  'one'
                when 2
                  'two'
                when 0
                  'never'
                else
                  'do not know that one'
              end
puts translation

# using an if elsif statement
translation = if number == 0
                'zero'
              elsif number == 1
                'one'
              elsif number == 2
                'two'
              else
                'do not know that one'
              end

# using an array
dictionary = ['zero', 'one', 'two', 'three']
translation = dictionary[number]
translation ||= 'do not know that one' # conditional assignment

# using a hash
dictionary = { 0 => 'zero', 1 => 'one', 2 => 'two' }
translation = dictionary[number]
translation ||= 'do not know that one' # conditional assignment
