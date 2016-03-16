class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :Name

      t.timestamps null: false
    end
  end
end
