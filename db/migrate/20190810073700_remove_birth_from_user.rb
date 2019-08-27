class RemoveBirthFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :integer, :integer
  end
end
