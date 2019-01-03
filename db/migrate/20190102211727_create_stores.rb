class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
    t.string :location
    t.string :name
    t.float :bank_account

    t.timestamps
end
  end
end
