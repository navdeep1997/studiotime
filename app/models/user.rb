class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pictures, as: :imageable
  has_many :listings
  has_many :payments
  has_many :orders
  has_many :ratings
end
