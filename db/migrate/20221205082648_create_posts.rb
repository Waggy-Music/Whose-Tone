class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id, null:false
      t.integer :admin_id
      t.text :body, null:false
      t.string :tag
      t.boolean :is_deleted, default: false, null: false
      t.timestamps
    end
  end
end
