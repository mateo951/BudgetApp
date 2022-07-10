require 'user'

module Mocks
  def create_users
    names = [
      { name: 'Mateo', email: 'marca2@foo.com' },
      { name: 'Felipe', email: 'test2@hello.com' }
    ]
    (0..1).each do |i|
      user = User.new(names[i])
      user.password = '123456'
      user.save!
    end
    User.all
  end
end
