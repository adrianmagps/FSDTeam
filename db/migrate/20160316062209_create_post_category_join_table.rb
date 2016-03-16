class CreatePostCategoryJoinTable < ActiveRecord::Migration
  def change
    create_table :categories_post, :id => false do |t|
      t.references :post, index: true
      t.references :category, index: true
    end
  end
end
