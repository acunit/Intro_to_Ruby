# Write a loop that prints from 1 to 20. Try it with all the loops covered in this lesson.
x = 0

20.times do
  puts x += 1
end

#  Do it again counting down from 20 to 1.
x = 20

20.times do
  puts x
  x -= 1
end

# Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
def num_checker(num)
  if num >= 1 && num <=10
    print "valid"
  else
    print "invalid"
  end
end

# Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
def fizz_buzz
  x=0
  100.times do
    if x%15==0
      puts "fizzbuzz"
    elsif  x%5==0
      puts "buzz"
    elsif x%3==0
      puts "fizz"
    else
      puts x
    end
    x += 1
  end
end




# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

def sum_these_numbers(num1, num2)
  puts num1+num2
end



# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
def is_even(num)
  if num%2==0
    puts "true"
  else
    puts "false"
  end
end

# Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.

array = ["cat", "dog", "words", "fun", "zen"]
array.map{|i|i.upcase}


# Write a method which calls another method, then uses its return value.
array.reverse.map{|i|i.upcase}

def is_even(num)
  if num%2==0
    true
  else
    false
  end
end

def even_or_odd(num)
  if is_even(num) == true
    puts "#{num} is an even number."
  else
    puts "#{num} is an odd number."
  end
end


# Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.

def valid_date(month, day, year)
  if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && (day >= 1 && day <= 31)
    true
  elsif (month == 4 || month == 6 || month == 9 || month == 11) && (day >= 1 && day <= 30)
    true
  elsif (month == 2) && (day >= 1 && day <= 28) && (year % 4 > 0)
    true
  elsif (month == 2) && (day >= 1 && day <= 29) && (year % 4  == 0)
    true
  else
    false
  end
end





# Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).

def rps_game
  puts "Player1 choose: rock, paper, scissors?"
  input1=gets.chomp
  if input1 == "rock" || input1 == "paper" || input1 == "scissors"
    puts "Now close your eyes. Player two get ready."
    puts "Player2 choose: rock, paper, scissors?"
    input2=gets.chomp
    if input2 == "rock" || input2 == "paper" || input2 == "scissors"
      if input1=="rock" && input2=="paper"
        puts "player2 wins"
      elsif input1 == "rock" && input2 == "scissors"
        puts "player1 wins"
      elsif input1 == "paper" && input2 == "rock"
        puts "player1 wins"
      elsif input1 == "paper" && input2 == "scissors"
        puts "player2 wins"
      elsif input1 == "scissors" && input2 =="rock"
        puts "player 2 wins"
      elsif input1 == "scissors" && input2 == "paper"
        puts "player 1 wins"
      elsif input1 == input2
        puts "tie! play again."
        rps_game
      end
    else
      puts "Not an option, start over"
    rps_game
    end
  else
    puts "Not an option, start over"
    rps_game
  end
end
