class AddProductToLikes < ActiveRecord::Migration
  def change
    add_column :spree_likes, :product_id, :integer

  end
end
