class AddBirthToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth, :date
  end
end
