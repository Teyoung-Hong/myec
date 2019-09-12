class CreateContactReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_replies do |t|

      t.references :contact, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
