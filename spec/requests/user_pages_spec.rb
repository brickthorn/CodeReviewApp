require 'spec_helper'

describe "User pages" do

  	let(:user1) { Fabricate(:user) }

	subject {page}
	before { visit root_path }

	context "sign up" do

		it { should have_link "Sign Up"}

		it "should go to sign up page on clicking sign up link" do
			click_link("Sign Up")
			current_path == new_user_registration_path
		end

		it "should register a new user" do
			visit new_user_registration_path

			fill_in "Name", with: user1.name
			fill_in "Email", with: user1.email
			fill_in "Password", with: user1.password
			fill_in "Password confirmation", with: user1.password_confirmation
			click_button 'Sign up'
			current_path == root_path

		end
	end


end