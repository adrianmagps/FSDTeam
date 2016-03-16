class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :UserName

      t.timestamps null: false
    end
  end
end
