class User < ApplicationRecord
  has_many posts
  validates :username, length: {in: 3..12}, uniqueness: true
end
