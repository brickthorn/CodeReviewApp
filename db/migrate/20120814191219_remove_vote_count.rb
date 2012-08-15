class RemoveVoteCount < ActiveRecord::Migration
  def up
    remove_column :reviews, :vote_count
  end

  def down
  end
end
