class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, length: {in: 3..12}, uniqueness: true
end
