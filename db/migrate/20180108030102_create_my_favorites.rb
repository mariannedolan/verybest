class CreateMyFavorites < ActiveRecord::Migration
  def change
    create_table :my_favorites do |t|
      t.integer :dish_id
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
