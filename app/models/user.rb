class User < ActiveRecord::Base
  attr_accessible :email, :password, :image, :birthday, :description, :phone, :active, :address_id

  validates :email, presence: true, length: { minimum: 3, maximum: 50 }
  validates :password, presence: true

  has_many :campgrounds, class_name: 'Campground'
  has_many :comments, class_name: 'Comment'
  belongs_to :address, foreign_key: :address_id, class_name: 'Address'
end