class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :lowest_price
      t.string :image_url
      t.text :detail
      t.string :category
      t.integer :user_id
      t.string :size

      t.timestamps null: false
    end
  end
end
