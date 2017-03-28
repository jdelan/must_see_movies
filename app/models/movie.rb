class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director,
             :foreign_key => "directors_id"

  has_many   :castings,
             :foreign_key => "movies_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :actors,
             :through => :castings,
             :source => :actors

  # Validations

end
