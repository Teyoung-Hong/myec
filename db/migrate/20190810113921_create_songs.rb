class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    t.integer :disc_id
    t.string :song_name
    t.string :song_order
      t.timestamps
    end

    add_index :songs, :song_name
  end
end
