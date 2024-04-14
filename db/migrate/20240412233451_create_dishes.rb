class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :restaurant
      t.string :name
      t.string :rating

      t.timestamps
    end
  end
end
