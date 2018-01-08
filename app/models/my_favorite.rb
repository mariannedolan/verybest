class MyFavorite < ApplicationRecord
  # Direct associations

  belongs_to :restaurant,
             :class_name => "Venue",
             :counter_cache => true

  belongs_to :dish

  # Indirect associations

  # Validations

end
