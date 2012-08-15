class CreateCodeSubmissions < ActiveRecord::Migration
  def change
    create_table :code_submissions do |t|
      t.integer :user_id
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
