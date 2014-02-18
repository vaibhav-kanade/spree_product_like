class AddUserToLikes < ActiveRecord::Migration
  def change
    add_column :spree_likes, :user_id, :integer
  end
end
