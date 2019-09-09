class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :subject
      t.string :email
      t.string :sender_name
      t.string :sender_name_kana
      t.boolean :checking_status
      t.text :body

      t.timestamps
    end
  end
end
