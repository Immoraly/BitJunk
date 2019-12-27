class Role < ApplicationRecord
  has_many :garbage_men
  has_many :admin_users

  validates :name, presence: true
end
