class CreateSocialProfiles < ActiveRecord::Migration
  def change
    create_table :social_profiles, :id => false do |t|
      t.string :user
      t.integer :profileType

      t.references :user, index: true

      t.timestamps null: false
    end

  end
end
