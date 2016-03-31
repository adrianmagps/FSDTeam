class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.text :description
      t.string :externalLink

      t.timestamps null: false

      t.references :user, index: true
    end
  end
end
