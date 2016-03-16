class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :Name
      t.text :Description
      t.string :ExternalLink

      t.timestamps null: false
    end
  end
end
