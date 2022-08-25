require 'rails_helper'

RSpec.describe 'Article', type: :request do
  describe 'GET /articles/index' do
    it 'should get to login page' do
      get articles_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /article/:id/index' do
    let(:article) { create :article }
    it 'should get to article with given id' do
      get article_path(article.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /articles' do
    let(:user) { create(:user) }

    before :each do
      sign_in user
    end

    it 'should user sign_up' do
      post '/articles',
           params: { article: { title: Faker::Lorem.sentence, description: '123456', body: 'lorem' } }
      expect(response).to have_http_status(302)
    end
  end
end
