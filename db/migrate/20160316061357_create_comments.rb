class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :Name
      t.string :Email
      t.text :Content
      t.integer :ReplyTo

      t.timestamps null: false
    end
  end
end
