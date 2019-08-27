class OrderedProduct < ApplicationRecord
  
  # association
  belongs_to :order
  belongs_to :genre

  # attachment
  attachment :jacket_image

end
