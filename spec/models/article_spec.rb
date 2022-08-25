require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'it create article' do
    let(:user) { create :user }
    subject { user.articles.create!(title: 'example article', description: '123456') }
    it 'should create article successfully' do
      expect do
        expect(subject).to eq Article.first
      end.to change(Article, :count).by(1)
    end
  end

  describe 'it destroy article ' do
    let!(:article) { create :article }
    subject { article.destroy }

    it 'should create article successfully' do
      expect { subject }.to change(Article, :count).by(-1)
    end
  end

  describe 'it create article with youtube id from description' do
    let!(:user) { create :user }
    subject do
      user.articles.create(title: 'example article',
                           description: 'https://www.youtube.com/watch?v=H7Q9isRWNS4&ab_channel=RazyClips')
    end

    it 'should create article successfully' do
      res = subject
      expect(res.youtube_id).to eq('H7Q9isRWNS4')
    end
  end
end
