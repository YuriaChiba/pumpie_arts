class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :self_introduction
      t.string :location
      t.string :image_url

      t.timestamps null: false
    end
  end
end
