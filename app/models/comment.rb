class Comment < ApplicationRecord
  validates :name, :body, presence: true

  belongs_to :post
end