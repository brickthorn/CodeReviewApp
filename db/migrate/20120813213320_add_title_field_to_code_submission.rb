class AddTitleFieldToCodeSubmission < ActiveRecord::Migration
  def change
    add_column :code_submissions, :title, :string
  end
end
