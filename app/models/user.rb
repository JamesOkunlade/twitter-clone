class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweeets
  has_many :followers
  has_many :followings
  # has_many :followships, 
  # has_many :followings, through: :followships, source: :followee
  # has_many :followers, through: :followships, source: :follower
end
