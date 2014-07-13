require 'spec_helper'

describe 'Users' do
  context 'Get /users/new' do
    it 'displays the create new user page' do
      visit new_user_path

      expect(page).to have_content('Email')
      expect(page).to have_content('Full Name')
      expect(page).to have_content('Password')
      expect(page).to have_content('Confirm Password')
      expect(page).to have_field('Email:')
      expect(page).to have_field('Password:')
      expect(page).to have_field('Confirm Password:')
      expect(page).to have_field('Full Name:')
      expect(page).to have_button('Sign Up')
    end

    it 'displays a confirmation message' do
      visit new_user_path

      click_button 'Sign Up'
      expect(page).to have_content('Beats For Sale')
    end
  end
end


