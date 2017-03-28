class Actor < ApplicationRecord
  # Direct associations

  has_many   :castings,
             :foreign_key => "actors_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :movies,
             :through => :castings,
             :source => :movies

  # Validations

end
