class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :visible
      t.text :summary
      t.integer :visits
      t.datetime :lastUpdate

      t.references :categories, index: true

      t.integer :autor_id, index: true

      t.timestamps null: false
    end
  end
end
