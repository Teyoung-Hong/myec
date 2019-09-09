class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :genre_id
      t.string :artist_name
      t.string :album_name
      t.string :label
      t.string :jacket_image_id
      t.integer :price
      t.integer :stock
      t.boolean :sales_status, default: true

      t.timestamps
    end
  end
end
