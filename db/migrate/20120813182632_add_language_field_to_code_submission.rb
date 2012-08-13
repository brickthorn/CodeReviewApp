class AddLanguageFieldToCodeSubmission < ActiveRecord::Migration
  def change
    add_column :code_submissions, :language, :string
  end
end
