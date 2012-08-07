class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :user_id
      t.text :body
      t.integer :code_submission_id
      t.integer :vote_count

      t.timestamps
    end
  end
end
