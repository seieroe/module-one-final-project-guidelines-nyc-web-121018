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


def get_name
  puts "What is your name?"
end

#puts "Hi #{name}, welcome to the lottery store."

def get_age
  puts "what is your age?"
  # age = gets.chomp.to_i
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
  #write a helper method that cuts the dollar sign off the beginning
  #if $ takes it off, else do nothing
  # wallet = gets.chomp.to_f
end

def wallet_check(userwallet)
  if userwallet < 3
    #TO DO: if there is a $ it changes to just the number
    puts "Sorry you need more money to play lottery."
    exit
  else
    puts "Alright, let's play lottery!"
    #TO DO: assigns a store instance to this game
  end
end

# --------------- ENDS CREATES NEW USER METHODS -------------------------

# ---------------BEGIN PLAY LOTTERY---------------
def play_lottery
  puts "Would you like to buy a ticket? yes/no"
    answer = gets.chomp
    if answer == "yes"
      #program continues to execute
    elsif answer == "no"
      puts "Ok thanks, come back later to play lottery"
      exit
    else
      puts "It's a yes or no question."
      #TO DO stretch goal loops back through puts "Would you like to buy a ticket? yes/no"
      #to do terminal flashes red
      exit
    end
  end



#----- CHOOSES EXISTING STORE -------
def choose_store
  Store.all.shuffle.first
end

# --------------- CREATES NEW LOTTERY TICKET ------------------------------
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



# --------------- ENDS CREATES NEW LOTTERY TICKET METHODS -------------------------

#------------------------ BEGIN CHECK YOU TICKET-------------------
def check_ticket
  puts "Would you like to check your ticket? yes/no"
    answer = gets.chomp
    if answer == "yes"
      #program continues to execute
    elsif answer == "no"
      puts "Ok thanks, come back later to check your ticket"
      exit
    else
      puts "It's a yes or no question."
      #TO DO stretch goal loops back through puts "Would you like to buy a ticket? yes/no"
      #to do terminal flashes red
      exit
    end
end

def check_against_winning_lottery_numbers(ticket)
    # lottery_numbers = ticket
    # binding.pry
    if ticket.num1 == @winning_lottery_numbers[0]
      puts "#{ticket.num1} is a match! You won $10"
      #TO DO Adds $10 to userwallet
      #TO DO adds a different amount of $ based on how many numbers match
      #TO DO terminal flashes many colors when you win
    else
      puts "#{ticket.num1} doesn't match. You didn't win.  Maybe next time... you never know!"
      #TO DO terminal flashes red
      exit
    end
    if ticket.num2 == @winning_lottery_numbers[1]
      puts "#{ticket.num2} is a match! You won $10"
      #TO DO Adds $10 to userwallet
      #TO DO adds a different amount of $ based on how many numbers match
      #TO DO terminal flashes many colors when you win
    else
      puts "#{ticket.num2} doesn't match. You didn't win the grand prize.  Maybe next time... you never know!"
      #TO DO terminal flashes red
      exit
    end
    if ticket.num3 == @winning_lottery_numbers[2]
      puts "#{ticket.num3} is a match! You won $10"
      #TO DO Adds $10 to userwallet
      #TO DO adds a different amount of $ based on how many numbers match
      #TO DO terminal flashes many colors when you win
    else
      puts "#{ticket.num3} doesn't match. You didn't win the grand prize.  Maybe next time... you never know!"
      #TO DO terminal flashes red
      exit
    end
    if ticket.num4 == @winning_lottery_numbers[3]
      puts "#{ticket.num4} is a match! You won $10"
      #TO DO Adds $10 to userwallet
      #TO DO adds a different amount of $ based on how many numbers match
      #TO DO terminal flashes many colors when you win
    else
      puts "#{ticket.num4} doesn't match. You didn't win the grand prize.  Maybe next time... you never know!"
      #TO DO terminal flashes red
      exit
    end
    if ticket.num5 == @winning_lottery_numbers[4]
      puts "#{ticket.num5} is a match! You're a grand prize winner!!!  YOU JUST WON ONE MILLION DOLLARS"
      #TO DO Adds $1_000_000 to userwallet
      #TO DO adds a different amount of $ based on how many numbers match
      #TO DO terminal flashes many colors when you win
    else
      puts "#{ticket.num5} doesn't match. You didn't win the grand prize.  Maybe next time... you never know!"
      #TO DO terminal flashes red
      exit
    end
end

# customer = Customer.new(name, bank_account, age)
# customer.save
#Customer.new.save(name, age, money)
#TO DO : creates customer with the given info (name, age, bank_account)
# look into .create

# if money < 3
#   #TO DO: if there is a $ it changes to just the number
#   puts "Sorry you need more money to play lottery."
#   exit
# else
#   puts "Alright, #{name}, let's play lottery!"
#   #TO DO: assigns a store instance to this game
# end

# puts "Would you like to buy a ticket? yes/no"
  #write a method that gets me a random store
# answer = gets.chomp


# if answer == "yes"
#   #create ticket -- will have store info, customer info, lottery_numbers
#   store = Store.all.rand
#   lottery_ticket = Lottery_ticket.new(Customer.all.last.id, store.id,)
#   lottery_ticket.save
#   puts "These are you lottery numbers:"
#   lottery_numbers = 5.times { puts (rand() * 5).to_i }
#   puts lottery_numbers
#   #get the numbers
#   #TO DO ; seperat method
#   #takes $3 from customer bank_account
#   #adds $3 to store bank_account
#   #checks against winning_lottery_numbers
#     if lottery_numbers == winning_lottery_numbers
#       puts "You won :)"
#       #TO DO Adds $100 to
#       #TO DO adds a different amount of $ based on how many numbers match
#       #TO DO terminal flashes many colors when you win
#     else
#       puts "You didn't win.  Maybe next time... you never know!"
#       #TO DO terminal flashes red
#     end
# elsif answer == "no"
#   puts "Ok thanks, come back later to play lottery"
#   exit
# else
#   puts "It's a yes or no question."
#   #TO DO stretch goal loops back through puts "Would you like to buy a ticket? yes/no"
#   #to do terminal flashes red
#   exit
# end
#

#update bank account of customer and stores
#ability to throw away lottery_tickets
  #if winning_lottery_numbers
  #puts "You won $25!"
  #adds 25 to customer bank_account
  # else
  #puts "You didn't win.  Maybe next time... you never know!"
  #puts

  #DESTROY ; THROW AWAY TICKET, DELETES FROM DTABASE
