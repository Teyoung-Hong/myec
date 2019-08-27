class Disc < ApplicationRecord
  # association
  belongs_to :product
  has_many :songs

  # cocoon
  accepts_nested_attributes_for :songs, allow_destroy: true

end
