def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  result1 = deal_card
  result2 = deal_card
  display_card_total(result1 + result2)
  result1+result2
end

def hit?(current_total)
  prompt_user
  reply = get_user_input
  if reply === "s"
    current_total
  elsif reply === "h"
    new_card = deal_card
    current_total += new_card
    current_total
  else
    invalid_command
    prompt_user
    get_user_input
    current_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first_cards = initial_round
  current = hit?(first_cards)
  display_card_total(current)
  until current > 21
    hit?(current)
  end
  end_game(current)
end
