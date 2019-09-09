class CreateOrderedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ordered_products, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

    t.integer :genre_id
    t.integer :order_id
    t.string :product_name
    t.string :artist_name
    t.string :label
    t.string :jacket_image_id
    t.integer :price

      t.timestamps
    end
  end
end
