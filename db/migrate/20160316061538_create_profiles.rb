class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles, :id => false do |t|
      t.string :firstName
      t.string :lastName
      t.string :birthDate
      t.string :sex
      t.string :country
      t.string :address
      t.string :phone

      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
