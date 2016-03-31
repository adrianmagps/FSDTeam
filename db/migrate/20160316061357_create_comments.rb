class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :content

      t.references :post, index: true

      t.references :reply_to, index: true

      t.timestamps null: false
    end
  end
end
