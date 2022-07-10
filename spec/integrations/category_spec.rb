require 'rails_helper'

RSpec.describe Category, type: :feature do
  before :all do
    @first_user = User.create(
      name: 'Victor',
      email: 'victorperaltagomez@gmail.com',
      password: '121212'
    )
    @category = Category.create(user: @first_user, name: 'Groceries')
  end

  before :each do
    visit root_path
  end

  after :all do
    @users.destroy
  end
end
