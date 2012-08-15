class ChangeUserIdAgain < ActiveRecord::Migration
  def up
    remove_column :reviews, :user_id
    add_column :reviews, :user_id, :integer
  end

  def down
  end
end
