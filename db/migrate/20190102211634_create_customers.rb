class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
    t.string :name
    t.float :bank_account
    t.float :age

    t.timestamps
    end
  end
end
