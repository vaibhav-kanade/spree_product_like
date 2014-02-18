class AddLikesCounterToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :likes_count, :integer, default: 0
  end
end
