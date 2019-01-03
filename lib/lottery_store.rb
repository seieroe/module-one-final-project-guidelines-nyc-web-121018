@winning_lottery_numbers = [1, 4, 3, 5, 2]

def customer_info
  gets.chomp
end

# -------CREATES NEW CUSTOMER (HELPER METHODS BELOW)---------
def new_customer
  get_name
  username = customer_info
  #binding.pry
  if Customer.all.find_by(name: username)
    puts "Hi, #{username}, welcome back."
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
  puts "What is your name?"
end

#puts "Hi #{name}."

def get_age
  puts "what is your age?"
end

def age_check(age)
  if age < 21
    puts "Sorry, you're too young to play lottery."
    exit
  else
    puts "It's a great day to be #{age}."
  end
end

def get_wallet
  puts "How much money do you have?"
end

def wallet_check(userwallet)
  if userwallet < 3
    puts "Sorry you need more money to play lottery."
    exit
  else
    puts "Alright, let's play lottery!"
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
  puts "Would you like to buy a ticket? yes/no"
    answer = gets.chomp
    if answer == "yes"
      current_wallet = Customer.last.bank_account
      new_wallet = current_wallet - 3
      Customer.last.update(bank_account: new_wallet)
      #program continues to execute
    elsif answer == "no"
      puts "Ok thanks, come back later to play lottery"
      exit
    else
      puts "It's a yes or no question."
      #TO DO stretch goal loops back through puts "Would you like to buy a ticket? yes/no"
      exit
    end
  end


# --------------- CREATES NEW LOTTERY TICKET ----------
def new_lottery_ticket(user)
  #----- CHOOSES EXISTING STORE -------
  store = choose_store
  #--- DRAWS LOTTERY NUMBERS -----
  puts "These are your lottery numbers:"
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
  puts "Would you like to check your ticket? yes/no"
    answer = gets.chomp
    if answer == "yes"
      #program continues to execute
    elsif answer == "no"
      puts "Ok, I guess you don't have to check it."
      exit
    else
      puts "It's a yes or no question."
      #TO DO stretch goal loops back through puts "Would you like to buy a ticket? yes/no"
      exit
    end
end


def check_against_winning_lottery_numbers(ticket)

    if ticket.num1 == @winning_lottery_numbers[0]
      puts "#{ticket.num1} is a match! You won $10"
      current_wallet = Customer.last.bank_account
      new_wallet = current_wallet + 10
      Customer.last.update(bank_account: new_wallet)
    else
      puts "#{ticket.num1} doesn't match."
      # exit
    end

    if ticket.num2 == @winning_lottery_numbers[1]
      puts "#{ticket.num2} is a match! You won $20"
      current_wallet = Customer.last.bank_account
      new_wallet = current_wallet + 20
      Customer.last.update(bank_account: new_wallet)
    else
      puts "#{ticket.num2} doesn't match."
      # exit
    end

    if ticket.num3 == @winning_lottery_numbers[2]
      puts "#{ticket.num3} is a match! You won $30"
      current_wallet = Customer.last.bank_account
      new_wallet = current_wallet + 30
      Customer.last.update(bank_account: new_wallet)
    else
      puts "#{ticket.num3} doesn't match."
    end

    if ticket.num4 == @winning_lottery_numbers[3]
      puts "#{ticket.num4} is a match! You won $40"
      current_wallet = Customer.last.bank_account
      new_wallet = current_wallet + 40
      Customer.last.update(bank_account: new_wallet)
    else
      puts "#{ticket.num4} doesn't match."
    end

    if ticket.num5 == @winning_lottery_numbers[4]
      puts "#{ticket.num5} is a match! You won $1000!!!!"
      current_wallet = Customer.last.bank_account
      new_wallet = current_wallet + 1000
      Customer.last.update(bank_account: new_wallet)
    else
      puts "#{ticket.num5} doesn't match."

    end

end

#------------------------ END CHECK YOUR TICKET-----------------

# >------------------ BEGIN DESTROY TICKET ---------------------

def destroy_ticket
  puts "You're done with your ticket. Would you like to throw it away? (yes/no)"
    answer = gets.chomp
    if answer == "yes"
      LotteryTicket.last.destroy
    elsif answer == "no"
      puts "Ok, I guess you can hold onto it."
      exit
    else
      puts "It's a yes or no question."
      #TO DO stretch goal loops back through puts "Would you like to throw it away? yes/no"
      exit
    end
# >------------------ END DESTROY TICKET ------------------------

end


  #stretch goal how many tickets has customer bought, how much money spent/won
  #stretch goal terminal flashes many colors when you win
  #stretch goal terminal flashes red when you lost
  #stretch goal find a more elegant way to check tickets
  #stretch goal make store chosen with customer creation
  #stretch goal write a helper method that cuts the dollar sign off the wallet input if it is there
