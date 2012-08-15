class AddVoteCounts < ActiveRecord::Migration
  def up
    add_column :code_submissions, :vote_count, :integer, :default => 0
    add_column :reviews, :vote_count, :integer, :default => 0
  end

  def down
  end
end
