require 'rails_helper'

RSpec.describe Category, type: :model do
  before :all do
    @user = User.new(name: 'Mateo', email: 'test@gmail.com', password: '123456')
    @category = Category.new(id: 1, user: @user, name: 'Fast Foods', icon: 'test.png')
    @category2 = Category.new(id: 2, user: @user)
  end
  context 'Testing Category Model' do
    it 'Category is invalid - Testing false positive' do
      expect(@category2).to be_invalid
    end
    it 'Category is valid' do
      expect(@category).to be_valid
    end
    it 'A category was created and stored' do
      expect(@category.name).to be == "Fast Foods"
    end
  end
end
