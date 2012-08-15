class ChangeUserIdType < ActiveRecord::Migration
  def up
    change_column :reviews, :user_id, :integer
  end

  def down
  end
end
