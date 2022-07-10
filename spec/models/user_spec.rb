require 'rails_helper'

RSpec.describe 'User model', type: :request do
  context 'Testing User Model' do
    it 'User is valid' do
      user = User.new(name: 'Felipe', email: 'test@gmail.com', password: '123456')
      expect(user).to be_valid
    end
    it 'User is invalid due to bad input' do
      user = User.new(name: '', email: 'test@gmail.com', password: '123456')
      expect(user).to be_invalid
    end
  end
end
