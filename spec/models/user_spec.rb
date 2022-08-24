require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'it create user' do
    subject { User.create(email: 'example@gmail.com', password: '123456') }
    it 'should create user successfully' do
      expect do
        expect(subject).to eq User.first
      end.to change(User, :count).by(1)
    end
  end

  describe 'it destroy user ' do
    subject { User.find_by(email: 'example@gmail.com').destroy }
    before do
      User.create(email: 'example@gmail.com', password: '123456')
    end

    it 'should create user successfully' do
      expect { subject }.to change(User, :count).by(-1)
    end
  end
end
