class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.integer :admin_id
      t.string :body
      t.string :tag
      t.timestamps
    end
  end
end
