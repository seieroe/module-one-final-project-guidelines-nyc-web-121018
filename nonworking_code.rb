# if LotteryTicket.customer_id == Customer.id
# Customer.last do |customer_info|
  # customer_info.bank_account -= 3.0

  # new_wallet.update ActiveRecord
  # binding.pry
# puts "this works"
# end

  # age = gets.chomp.to_i


  # wallet = gets.chomp.to_f


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


    # #-----------------BEGIN UPDATE OF BANK ACCOUNTS----------------------
    # def price_of_ticket
    #   if LotteryTicket.last.customer_id == Customer(id
    #     Customer(bank_account) - 3
    #   end
    #   if LotteryTicket(store_id) == Store(id)
    #     Store(bank_account) + 3
    #   end
    # end


    # lottery_numbers = ticket
    # binding.pry


    # wallet = (LotteryTicket.customer(bank_account)) + 10
    #TO DO: assigns a store instance to this game

    # price_of_ticket


    # binding.pry

    # prize_money

     # binding.pry




           #
           # slot = "num" + num.counter += 1
           #
           # ticket["num#{var}"]

         #
         # if ticket.num1 == @winning_lottery_numbers[0]
         #   puts "#{ticket.num1} is a match! You won $10"
         #   current_wallet = Customer.last.bank_account
         #   new_wallet = current_wallet + 10
         #   Customer.last.update(bank_account: new_wallet)
         # else
         #   puts "#{ticket.num1} doesn't match."
         #   # exit
         # end
         #
         # if ticket.num2 == @winning_lottery_numbers[1]
         #   puts "#{ticket.num2} is a match! You won $20"
         #   current_wallet = Customer.last.bank_account
         #   new_wallet = current_wallet + 20
         #   Customer.last.update(bank_account: new_wallet)
         # else
         #   puts "#{ticket.num2} doesn't match."
         #   # exit
         # end
         #
         # if ticket.num3 == @winning_lottery_numbers[2]
         #   puts "#{ticket.num3} is a match! You won $30"
         #   current_wallet = Customer.last.bank_account
         #   new_wallet = current_wallet + 30
         #   Customer.last.update(bank_account: new_wallet)
         # else
         #   puts "#{ticket.num3} doesn't match."
         # end
         #
         # if ticket.num4 == @winning_lottery_numbers[3]
         #   puts "#{ticket.num4} is a match! You won $40"
         #   current_wallet = Customer.last.bank_account
         #   new_wallet = current_wallet + 40
         #   Customer.last.update(bank_account: new_wallet)
         # else
         #   puts "#{ticket.num4} doesn't match."
         # end
         #
         # if ticket.num5 == @winning_lottery_numbers[4]
         #   puts "#{ticket.num5} is a match! You won $1000!!!!"
         #   current_wallet = Customer.last.bank_account
         #   new_wallet = current_wallet + 1000
         #   Customer.last.update(bank_account: new_wallet)
         # else
         #   puts "#{ticket.num5} doesn't match."
         #
         # end
