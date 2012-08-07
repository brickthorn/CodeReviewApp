require 'spec_helper'

describe "code submission pages" do
  subject { page }
  describe "resolves to index page of code submissions for root" do
    before { visit root_path }
    
    it {should have_link("Submit Your Code") }
    
    it "should go to the new code submission page when clicking the button" do
      click_link("Submit Your Code")
      current_path.should == new_code_submission_path
    end
    
    it {should have_content("Enter Code Url")}
    
  end
  
end

