class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :username, presence: true, uniqueness: true, length: { in: 6..25 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..25 }
end
