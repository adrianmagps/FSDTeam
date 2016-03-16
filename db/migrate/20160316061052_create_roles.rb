class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :Name
      t.string :Description

      t.timestamps null: false
    end
  end
end
