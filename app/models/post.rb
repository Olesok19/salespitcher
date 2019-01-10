class Post < ApplicationRecord
  has_many :reviews
  has_many :users
  self.per_page = 10

  validates :title, presence: true
  validates :text, presence: true
end
