require 'spec_helper'

describe "code submission pages" do
  subject { page }
  describe "index page for code submissions" do
    before :each do  
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
      page.should have_content("Enter code url")
    end
    
    describe "submission page" do
      before :each do
        visit new_code_submission_path 
      end
      
      it "should go to the #new page after clicking Submit Link and take in form data to show correctly" do
        page.should have_field("code_submission_url")
        new_id = CodeSubmission.last.id + 1
        page.fill_in 'code_submission_url', :with => "http://www.github.com/test/"
        page.fill_in 'code_submission_description', :with => "lorem ipsum veritaie huckster"
        page.click_button 'Submit'
        current_path.should == code_submission_path(new_id)
        page.should have_content("http://www.github.com/test/")
      end
    
    
    end
    
  end
end

