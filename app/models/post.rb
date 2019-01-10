class Post < ApplicationRecord
  has_many :reviews
  has_many :users
  self.per_page = 10
  mount_uploader :file, FileUploader

  validates :title, presence: true
  validates :text, presence: true
end
