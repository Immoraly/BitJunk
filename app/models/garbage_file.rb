class GarbageFile < ApplicationRecord
  belongs_to :garbage_man

  validates :name, presence: true
end
