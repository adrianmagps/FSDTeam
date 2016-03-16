class CreatePostTagJoinTable < ActiveRecord::Migration
  def change
    create_table :posts_tags, :id => false do |t|
      t.references :post, index: true
      t.references :tag, index: true
    end

  end
end
