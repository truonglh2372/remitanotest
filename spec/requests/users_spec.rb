require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users/login' do
    it 'should get to login page' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /users/sign_up' do
    it 'should get to login sign_up' do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users/sign_up' do
    let(:params) {}
    it 'should get to login sign_up' do
      get new_user_registration_path
      post '/users',
           params: { email: Faker::Internet.email, password: '123456', confirm_password: '123456' }
      expect(response).to have_http_status(200)
    end
  end
end
