def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"# code #end_game here
end

def initial_round
  sum = 0
  2.times {sum += deal_card}

  display_card_total(sum)
  return sum
end

def hit?(currentCardTotal)
  prompt_user
  input = get_user_input

  if (input == 's')

  elsif (input == 'h')
    currentCardTotal += deal_card
  else
    invalid_command
    hit?(currentCardTotal)
  end

  currentCardTotal
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until (sum > 21) do
    sum = hit?(sum)
    display_card_total(sum)
  end
end_game(sum)
end
