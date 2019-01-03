require_relative '../config/environment'

puts "Hi! Welcome to the lottery store."

user = new_customer

#new_lottery_ticket(user)

play_lottery

ticket = new_lottery_ticket(user)

check_ticket

check_against_winning_lottery_numbers(ticket)


# binding.pry
