class Order < ApplicationRecord

  # association
  has_many :ordered_products
  belongs_to :address

  # attachment
  attachment :jacket_image

end
