puts("Hi, what is your name?")
puts
name = gets.chomp.to_s.capitalize()
puts("Welcome to the Guessing Number Game, #{name}")
puts
sleep 1.0
puts ".............."
sleep 0.5
puts
puts "Let's get started"
puts
puts "..................."
puts
puts("There are 3 levels in the game; easy, medium and hard")
puts
puts("press 1 to go to level 1 which is easy, 2 to level 2 which is medium and 3 to level 3 which is hard")
level = gets.chomp().to_i
puts("You're in level #{level}")
easy_number_limit = 10
medium_number_limit = 20
hard_number_limit = 50
easy_random_number = rand(1..10)
medium_random_number = rand(1..20)
hard_random_number = rand(1..50)
user_guess = 0
guess_count = 0
easy_guess_limit = 6
medium_guess_limit = 4
hard_guess_limit = 3

#def message(number)
#  puts "------ sorry, your guess was too " + "#{number} ------"
#end
if level === 1
  puts "Please, enter your guessing number between 1 and #{easy_number_limit}"
  until user_guess == easy_random_number || guess_count == easy_guess_limit
    puts
    user_guess = gets.chomp.to_i
    if user_guess > easy_random_number
      puts "------ sorry, your guess was too high !------"
    elsif user_guess < easy_random_number
      puts "------ sorry, your guess was too low !------"
    elsif user_guess == easy_random_number
      puts "You got it right!"
    end
    puts
    guess_count += 1
    until_limit = easy_guess_limit - guess_count
    puts "you have #{until_limit} out of the #{easy_guess_limit} tries left"
    if guess_count == easy_guess_limit
      puts 
      3.times do
        puts "Game Over!"
        puts
      end
      puts "That was wrong. The answer is #{easy_random_number}"
    end
  end
elsif level === 2
  puts "Please, enter your guessing number between 1 nad #{medium_number_limit}"
  until user_guess === medium_random_number || guess_count === medium_guess_limit
    puts 
    user_guess = gets.chomp.to_i
    if user_guess > medium_random_number
      puts "------- sorry, your guess was too high !------"
    elsif user_guess < medium_random_number
      puts "------ sorry, your guess was too low !--------"
    elsif user_guess == medium_random_number
      puts "You got it right!"
    end
    puts
    guess_count += 1
    until_limit = medium_guess_limit - guess_count
    puts "you have #{until_limit} out of the #{medium_guess_limit} tries left"
    if guess_count == medium_guess_limit
      puts
      3.times do 
        puts "Game Over!!"
        puts
      end
      puts "That was wrong. The answer is #{medium_random_number}"
    end
  end
elsif level === 3
  puts "Please, enter your guessing number between 1 and #{hard_number_limit}"
  until user_guess === hard_random_number || guess_count === hard_guess_limit
    puts 
    user_guess = gets.chomp.to_i
    if user_guess > hard_random_number
      puts "------- sorry, your guess was too high !------"
    elsif user_guess < hard_random_number
      puts "------ sorry, your guess was too low !--------"
    elsif user_guess == hard_random_number
      puts "You got it right!"
    end
    puts
    guess_count += 1
    until_limit = hard_guess_limit - guess_count
    puts "you have #{until_limit} out of the #{hard_guess_limit} tries left"
    if guess_count == hard_guess_limit
      puts
      3.times do 
        puts "Game Over!!!"
        puts
      end
      puts "That was wrong. The answer is #{hard_random_number}"
    end
  end
else level < 1 and level > 3
  puts "Sorry, you enter in the wrong level guessing game"
  puts
end
