require 'rails_helper'

RSpec.describe Activity, type: :model do
  before :all do
    @user = User.new(name: 'Mateo', email: 'test@gmail.com', password: '123456')
    @category = Category.new(id: 1, user: @user, name: 'Fast Foods', icon: 'test.png')
  end

  context 'Testing Activity Model' do
    it 'Activity is valid' do
      activity = Activity.new(user: @user, category: @category, name: 'Phone Bills', amount: 23)
      expect(activity).to be_valid
    end
    it 'Activity is invalid - Testing false positive' do
      activity = Activity.new(category: @category, name: 'Phone Bills', amount: 23)
      expect(activity).to be_invalid
    end
  end
end
