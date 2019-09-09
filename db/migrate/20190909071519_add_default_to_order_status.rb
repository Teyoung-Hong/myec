class AddDefaultToOrderStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :order_status, :string, :default => '受付'
  end
end
