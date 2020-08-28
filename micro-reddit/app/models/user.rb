class User < ApplicationRecord
  validates :username, presence: true, length: { in: 6..12 }, uniqueness: true
  validates :email, uniqueness: true, format: { with: /\S*@\S*\.\S*/ }, presence: true
  validates :password, presence: true, length: { in: 6..16 }

  has_many :posts
  has_many :comments
end
