class CreateTeamRoles < ActiveRecord::Migration
  def change
    create_table :team_roles do |t|
      t.string :Name
      t.string :Description

      t.timestamps null: false
    end
  end
end
