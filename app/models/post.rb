class Post < ApplicationRecord
  validates :title, :body, :intro, presence: true
  validates :title, uniqueness: true
end