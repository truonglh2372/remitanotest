require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'it create user' do
    subject { Article.create(title: 'example article', description: '123456') }
    it 'should create user successfully' do
      expect do
        expect(subject).to eq Article.first
      end.to change(Article, :count).by(1)
    end
  end

  describe 'it destroy user ' do
    subject { Article.find_by(title: 'example article').destroy }
    before do
      Article.create(title: 'example article', description: '123456')
    end

    it 'should create user successfully' do
      expect { subject }.to change(Article, :count).by(-1)
    end
  end
end
