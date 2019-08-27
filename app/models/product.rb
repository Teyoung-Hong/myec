class Product < ApplicationRecord

  # attachment
  attachment :jacket_image
  
  # association
  has_many :discs, dependent: :destroy
  has_many :carts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :genre

  # cocoon
  accepts_nested_attributes_for :discs , allow_destroy: true

  # validates
  validates :album_name , presence: true 
  validates :jacket_image , presence: true 
  validates :price , presence: true 
  validates :stock , presence: true 
  validates :sales_status , presence: true 
  validates :label , presence: true 

  # functions
  def fav_by?(user_id)
    favorites.where(user_id: user_id).exists?
  end

  def self.pro_rank
    Product.find(Favorite.group(:product_id).order('count(product_id) DESC').limit(5).pluck(:product_id))
  end

end
