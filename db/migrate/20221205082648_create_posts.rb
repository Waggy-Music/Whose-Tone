class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :artist_id, null:false
      t.text :body, null:false
      t.string :tag
      t.timestamps
    end
  end
end
