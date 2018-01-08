class Dish < ApplicationRecord
  # Direct associations

  has_many   :my_favorite,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
