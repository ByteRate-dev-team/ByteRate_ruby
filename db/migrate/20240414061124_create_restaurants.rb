class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :bio
      t.integer :clean_score
      t.integer :price_score
      t.integer :ambiance_score

      t.timestamps
    end
  end
end
