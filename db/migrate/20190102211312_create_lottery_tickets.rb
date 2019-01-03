class CreateLotteryTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :lottery_tickets do |t|
    t.integer :num1
    t.integer :num2
    t.integer :num3
    t.integer :num4
    t.integer :num5

    t.belongs_to :customer
    t.belongs_to :store

    t.timestamps
    end
  end
end
