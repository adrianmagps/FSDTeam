class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :FirstName
      t.string :LastName
      t.string :BirthDate
      t.string :Sex
      t.string :Country
      t.string :Address
      t.string :Phone

      t.timestamps null: false
    end
  end
end
