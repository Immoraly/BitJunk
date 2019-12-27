require 'minitest/autorun'
require 'test_helper'

role1 = Role.create(name: 'User')

describe GarbageMan do
  # it 'can not have empty passsword' do
  # _(User.create(login: 'Oleg', password: nil, email: 'oleg@yandex.ru', role: role1, telephone_number: '892818000').valid?).must_equal false
  # end

  it 'can not have empty email' do
    _(GarbageMan.create(login: 'Oleg', password: '12345', email: nil, role: role1).valid?).must_equal false
  end
end
