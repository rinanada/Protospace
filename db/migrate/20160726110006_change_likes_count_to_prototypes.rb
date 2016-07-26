class ChangeLikesCountToPrototypes < ActiveRecord::Migration
  def change
    change_column :prototypes, :likes_count, :integer, default: 0
  end
end
