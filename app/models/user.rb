class User < ActiveRecord::Base
  attr_accessible :email, :password, :image, :birthday, :description, :phone, :active, :address_id

  validates :email, presence: true, length: { minimum: 3, maximum: 50 }
  validates :password, presence: true

  has_many :campgrounds, class_name: 'Campground', foreign_key: 'user_id'
  has_many :comments, class_name: 'Comment', foreign_key: 'user_id', dependent: :destroy
  has_one :addresses, class_name: 'Address'
end