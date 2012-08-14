class AddTitleFieldToCodeSubmission < ActiveRecord::Migration
  def change
    add_column :code_submissions, :title, :text
  end
end
