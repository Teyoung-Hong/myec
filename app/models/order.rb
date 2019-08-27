class Order < ApplicationRecord

  # association
  has_many :ordered_products

  # attachment
  attachment :jacket_image

end
