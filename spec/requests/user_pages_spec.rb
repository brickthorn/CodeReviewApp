require 'spec_helper'

describe "User pages" do

  	let(:user1) { Fabricate(:user) }
  	let(:user2) { Fabricate(:user) }

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

	context "sign in" do
		it { should have_link "Sign In"}

		it "should go to sign in page on clicking sign in link" do
			click_link("Sign In")
			current_path == new_user_session_path
		end

		it "should sign in a user" do
			visit new_user_session_path

			fill_in "Email", with: user1.email
			fill_in "Password", with: user1.password
			click_button 'Sign in'
			current_path == root_path
			should have_link "Profile"
			should have_link "Sign Out"

			click_link "Profile"
			current_path == user_path(user1)
			page.should have_content(user1.email)

		end

	end

	context "Profile" do

		it "should sign in a user" do
			visit new_user_session_path

			fill_in "Email", with: user1.email
			fill_in "Password", with: user1.password
			click_button 'Sign in'
			current_path == root_path
			should have_link "Profile"

			click_link "Profile"
			current_path == user_path(user1)
			page.should have_content(user1.email)

		end

	end

	context "Sign Out" do

		it "should sign out a user" do
			visit new_user_session_path

			fill_in "Email", with: user1.email
			fill_in "Password", with: user1.password
			click_button 'Sign in'
			current_path == root_path
			should have_link "Sign Out"

			click_link "Sign Out"
			current_path == root_path
			page.should have_link("Sign In")

		end

	end


		


end