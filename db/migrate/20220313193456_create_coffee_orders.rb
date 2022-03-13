class CreateCoffeeOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee_orders do |t|
      t.integer :user_id
      t.integer :coffee_type_id
      t.string :cafe
      t.integer :dairy_type_id
      t.text :modifications_other
      t.boolean :iced
      t.string :picture
      t.date :date
      t.integer :rating

      t.timestamps
    end
  end
end
