# Get My Number Game
# Written by: you!

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets

name = input.chomp!

puts "Welcome, #{input} !"

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you quess it?"
target = rand(100) + 1

# Track how many guesses the player has made.
num_guesses = 0

guessed_it = false

while num_guesses < 10 && guessed_it == false

  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
