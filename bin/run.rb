require_relative '../config/environment'

# randomize_winning_lottery_numbers

puts "

            Hi! Welcome to the lottery store.

                                                          "

user = new_customer

# ---------------BEGIN PLAY LOTTERY--------
play_lottery

ticket = new_lottery_ticket(user)

check_ticket

check_against_winning_lottery_numbers(ticket)

destroy_ticket
# ---------------END PLAY LOTTERY-----------

puts "
                        Come back soon!

                                                          "
