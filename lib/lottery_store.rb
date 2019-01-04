#--------------------------------------------------------------#
#-----------------WELCOME TO THE LOTTERY STORE-----------------#
#--------------------------------------------------------------#

@winning_lottery_numbers = [3, 2, 1, 4, 2]


def customer_info
  gets.chomp
end


# -------CREATES NEW CUSTOMER (HELPER METHODS BELOW)---------
def new_customer
  get_name

  username = customer_info

  if Customer.all.find_by(name: username)
    puts "

                Hi, #{username}, welcome back.


                                                    "
    Customer.all.find_by(name: username)
  else
    get_age
    userage = customer_info.to_i

    age_check(userage)

    get_wallet
    userwallet = customer_info.to_f

    wallet_check(userwallet)

    customer = Customer.create(name: username, age: userage, bank_account: userwallet)
  end
end

#----- helper methods for CREATE NEW CUSTOMER ----
def get_name
  puts "
                    What is your name?

                                                    "
end

#puts "Hi #{name}."

def get_age
  puts "
                    What is your age?

                                                    "
end

def age_check(age)
  if age < 21
    puts "
          Sorry, you're too young to play lottery.

                                                    "
    exit
  else
    puts "
              It's a great day to be #{age}.

                                                    "
  end
end

def get_wallet
  puts "
               How much money do you have?

                                                    "
end

def wallet_check(userwallet)
  if userwallet < 3
    puts "
          Sorry you need more money to play lottery.
                                                    "
    exit
  else
    puts "
             Lottery tickets are $3
                                                    "
  end
end
#----- end helper methods for CREATE NEW CUSTOMER ----

# --------------- ENDS CREATES NEW CUSTOMER METHODS -------------------------

#-------- CHOOSES STORE -------------
def choose_store
  Store.all.shuffle.first
end
#-------- ENDS CHOOSES STORE -------


# ---------------BEGIN PLAY LOTTERY----------------------------------

def play_lottery
  puts "
      ~~~~~~~~~$$$$$$$$$$$$$$$$$$$$$$$$$$~~~~~~~~~~

                  Let's play lottery!

      ~~~~~~~~~$$$$$$$$$$$$$$$$$$$$$$$$$$~~~~~~~~~~"

  puts "
            Would you like to buy a ticket?
                        yes/no

                                                      "
    answer = gets.chomp
    if answer == "yes"
      current_wallet = Customer.last.bank_account
      new_wallet = current_wallet - 3
      Customer.last.update(bank_account: new_wallet)
      #program continues to execute
    elsif answer == "no"
      puts "
            Ok thanks, come back later to play lottery

                                                      "
      exit
    else
      puts "
                  It's a yes or no question.
                  ***please type yes or no***


                                                      "
      play_lottery
    end
  end


# --------------- CREATES NEW LOTTERY TICKET ----------
def new_lottery_ticket(user)
  #----- CHOOSES EXISTING STORE -------
  store = choose_store
  #--- DRAWS LOTTERY NUMBERS -----
  puts "

                These are your lottery numbers:

                                                          "
  lottery_numbers = 5.times.map { (rand() * 5).to_i }
  puts lottery_numbers
  lottery_ticket = LotteryTicket.create(
    customer: user,
    store: store,
    num1: lottery_numbers[0],
    num2: lottery_numbers[1],
    num3: lottery_numbers[2],
    num4: lottery_numbers[3],
    num5: lottery_numbers[4]
  )

end
# --------------- ENDS CREATES NEW LOTTERY TICKET METHODS ------

#------------------------ BEGIN CHECK YOUR TICKET---------------
def check_ticket
  puts "
          Would you like to check your ticket to see if you won?
                          yes/no

                                                        "
    answer = gets.chomp
    if answer == "yes"
      #program continues to execute
    elsif answer == "no"
      puts "
            Ok, I guess you don't have to check it.

                                                        "
      exit
    else
      puts "
                   It's a yes or no question.
                  ***please type yes or no***

                                                        "
      check_ticket
    end
end


def check_against_winning_lottery_numbers(ticket)
    counter = 1

    @winning_lottery_numbers.each do |number|
      if number == ticket["num#{counter}"]
        current_wallet = Customer.last.bank_account
        new_wallet = current_wallet + (counter * 10)
        Customer.last.update(bank_account: new_wallet)
        puts "
            ~~****~~**~~~$$$$$$$$$$$$$$$$$$$$$$$$$$~~~~**~~****~~

                Number #{counter} is a match! You won $#{counter * 10}!

            ~~****~~**~~~$$$$$$$$$$$$$$$$$$$$$$$$$$~~~~**~~****~~"
      else
        puts "
                  Sorry, number #{counter} doesn't match.
                                                                "
      end
      counter += 1
    end

end

#------------------------ END CHECK YOUR TICKET-----------------

# >------------------ BEGIN DESTROY TICKET ---------------------

def destroy_ticket
  puts "
        You're done with your ticket. Would you like to throw it away?
                              yes/no
                                                                        "
    answer = gets.chomp
    if answer == "yes"
      LotteryTicket.last.destroy
    elsif answer == "no"
      puts "
                    Ok, I guess you can hold onto it.

                                                                        "

    else
      puts "
                        It's a yes or no question.
                        ***please type yes or no***


                                                                        "
      destroy_ticket
    end
# >------------------ END DESTROY TICKET ------------------------

end


  #stretch goal how many tickets has customer bought, how much money spent/won
  #stretch goal terminal flashes many colors when you win
  #stretch goal terminal flashes red when you lost
  #stretch goal make store chosen with customer creation
  #stretch goal write a helper method that cuts the dollar sign off the wallet input if it is there
  #stretch goal regx -- rubular makes writing regex easier
  #stretch goal -- create an admin mode that allows a user to set winning lottery NUMBERS
  #stretch goal -- randomize winning lottery numbers and check against last winning number
