class Director < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :movies,
             :foreign_key => "directors_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
