require 'rails_helper'

RSpec.feature 'article', type: :feature do
  scenario 'user can see video list' do
    visit articles_path

    expect(page).to have_text('Funny video')
  end

  scenario 'user can post a video' do
    visit articles_path
    expect(page).to have_text('Funny video')

    click_on('Post some funny video')
    expect(page).to have_text('Log in')

    click_on('sign_up_navigator')
    expect(page).to have_text('Sign up')

    fill_in 'user_email', with: Faker::Internet.email
    fill_in 'user_password', with: '123456'
    fill_in 'user_password_confirmation', with: '123456'

    click_on('submit_signup')

    expect(page).to have_text('New article')

    fill_in 'article_title', with: 'some funny title'
    fill_in 'article_body', with: 'some funny body text'
    fill_in 'article_description', with: "#{Faker::Lorem.sentence} https://www.youtube.com/watch?v=Eswn7bulbhk&ab_channel=C%E1%BA%A3mTh%E1%BB%83Thao"

    click_button 'create a post'

    expect(page).to have_text('some funny title')
  end
end
