require 'spec_helper'

describe "code submission show page" do
  subject { page }
  describe "making a review" do
    before :each do  
      @code_submission4 = Fabricate(:code_submission)
      @review1 = Fabricate(:review)
      @review2 = Fabricate(:review)
      @comment1 = Fabricate(:comment)
      visit code_submission_path(@code_submission4.id)
    end
    
    it "should show the reviews" do
      page.should have_content(@review1.body)
      page.should have_content(@review2.body)
    end
    
    it "should show the comments" do
      page.should have_content(@comment1.body)
    end

    
    # describe "submission page" do
    #   before :each do
    #     visit new_code_submission_path 
    #   end
    #   
    #   it "should go to the #new page after clicking Submit Link and take in form data to show correctly" do
    #     page.should have_field("code_submission_url")
    #     new_id = CodeSubmission.last.id + 1
    #     page.fill_in 'code_submission_url', :with => "http://www.github.com/test/"
    #     page.fill_in 'code_submission_description', :with => "lorem ipsum veritaie huckster"
    #     page.click_button 'Submit'
    #     current_path.should == code_submission_path(new_id)
    #     page.should have_content("http://www.github.com/test/")
    #   end
    # 
    # end
    
  end
end
