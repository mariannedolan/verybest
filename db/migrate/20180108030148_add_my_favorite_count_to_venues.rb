class AddMyFavoriteCountToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :my_favorites_count, :integer
  end
end
