class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
    add_index :comments, :post_id
    add_index :comments, :user_id
  end
end
