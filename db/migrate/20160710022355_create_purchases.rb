class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :purchase_price
      t.integer :user_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
