require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users/login' do
    it 'should get to login page' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /users/sign_up' do
    it 'should get to login' do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users/sign_up' do
    it 'should sign user up' do
      post '/users',
           params: { email: Faker::Internet.email, password: '123456', confirm_password: '123456' }
      expect(response).to have_http_status(200)
    end
  end
end
