class Venue < ApplicationRecord
  # Direct associations

  has_many   :my_favorites,
             :foreign_key => "restaurant_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
