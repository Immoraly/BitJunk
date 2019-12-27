require 'test_helper'
require 'minitest/autorun'

describe GarbageFile do
  it 'can not have empty name' do
    _(GarbageFile.create(name: nil ).valid?).must_equal false
  end
end
