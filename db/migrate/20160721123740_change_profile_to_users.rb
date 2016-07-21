class ChangeProfileToUsers < ActiveRecord::Migration
  def up
    change_column :Users, :profile, :text
  end

  def down
    change_column :Users, :profile, :string
  end

end
