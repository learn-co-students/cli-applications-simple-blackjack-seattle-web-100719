def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1...11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  return total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  resp = get_user_input
  
  if resp == "h"
    current_total += deal_card
  elsif resp != "s"
    invalid_command
    prompt_user
    resp = get_user_input
  end
  return current_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  running_total = initial_round
  until running_total > 21 do
    hit?(running_total)
    display_card_total(running_total)
  end
  end_game
end
    
