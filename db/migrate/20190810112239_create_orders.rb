class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :address_id
      t.integer :payway, default: 0

      t.timestamps
    end
  end
end
