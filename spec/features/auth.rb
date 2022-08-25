require 'rails_helper'

RSpec.feature 'login', type: :feature do
  scenario 'User creates a new user' do
    visit new_user_registration_path
    fill_in 'user_email', with: Faker::Internet.email
    fill_in 'user_password', with: '123456'
    fill_in 'user_password_confirmation', with: '123456'

    click_button 'Sign up'

    expect(page).to have_text('Logged in as')
  end
end
