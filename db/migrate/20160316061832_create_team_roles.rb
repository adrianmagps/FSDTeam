class CreateTeamRoles < ActiveRecord::Migration
  def change
    create_table :team_roles do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
