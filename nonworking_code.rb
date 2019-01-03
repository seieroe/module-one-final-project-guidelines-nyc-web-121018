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
