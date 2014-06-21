require 'spec_helper'

describe 'Users' do
  context 'Get /users/new' do
    it 'displays the create new user page' do
      visit new_user_path

      page.should have_content 'Email'
      page.should have_content 'Full Name'
      page.should have_content 'Password'
      page.should have_content 'Confirm Password'
      page.has_field? 'email'
      page.has_field? 'full_name'
      page.has_field? 'password'
      page.has_field? 'password_confirmation'
      page.has_button? 'Sign Up'
    end

    it 'displays a confirmation message' do
      visit new_user_path

      click_button 'Sign Up'
      page.should have_content 'Beats For Sale'
    end
  end
end


