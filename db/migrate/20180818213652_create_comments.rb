class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.integer :user_id, null: false
      t.integer :link_id, null: false

      t.timestamps
    end
    add_index :comments, :body
  end
end
