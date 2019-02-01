def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
	rand(1..11)
end

def display_card_total(total)
	puts "Your cards add up to #{total}"
end

def prompt_user
	puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
	action = gets.chomp
end

def end_game(total)
	puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
	total = deal_card + deal_card
	display_card_total(total)
	total
end

def hit?(total)
	prompt_user
	if get_user_input == 'h'
		return total += deal_card
	else
		return total
	end
end

def runner
	welcome
	hand = initial_round

end
