class Group < ApplicationRecord
  has_one :group_user

  validates :group_name, presence: true
end
