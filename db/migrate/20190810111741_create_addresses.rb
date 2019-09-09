class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.string :phone
      t.string :postal_code
      t.string :sending_address
      t.string :receiver_name
      t.string :receiver_name_kana

      t.timestamps
    end
  end
end
