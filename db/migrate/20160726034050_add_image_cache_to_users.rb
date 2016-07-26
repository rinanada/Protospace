class AddImageCacheToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image_cache, :text
  end
end
