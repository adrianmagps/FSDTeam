class CreateSocialProfiles < ActiveRecord::Migration
  def change
    create_table :social_profiles do |t|
      t.string :User
      t.integer :ProfileType

      t.timestamps null: false
    end
  end
end
