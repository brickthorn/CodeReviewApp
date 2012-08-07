require 'spec_helper'

describe "code submission pages" do
  subject { page }
  describe "resolves to index page of code submissions for root" do

    before(:each) do  
      @code_submission1 = Fabricate(:code_submission)
      @code_submission2 = Fabricate(:code_submission)
      @code_submission3 = Fabricate(:code_submission)
      visit root_path 
    end
    
    it {should have_link("Submit Your Code") }
    
    it "should show the submissions on the index page" do
      page.should have_content(@code_submission1.description)
      page.should have_content(@code_submission2.description)
      page.should have_content(@code_submission3.description)
    end
    
    it "should go to the new code submission page when clicking the button" do
      click_link("Submit Your Code")
      current_path.should == new_code_submission_path
      page.should have_content("Enter Code Url")
      
    end
    

    
  end
  
end

