class Genre < ApplicationRecord

  # association
  has_many :products

  # cocoon
  accepts_nested_attributes_for :products , allow_destroy: true

end
