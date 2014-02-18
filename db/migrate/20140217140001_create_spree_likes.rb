class CreateSpreeLikes < ActiveRecord::Migration
  def change
    create_table :spree_likes do |t|
      t.timestamps
    end
  end
end
