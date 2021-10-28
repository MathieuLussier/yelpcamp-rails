class Campground < ActiveRecord::Base
  attr_accessible :name, :description, :image, :price, :user_id, :address_id

  validates :name, presence: true, length: { minimum: 6, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }

  belongs_to :user, class_name: 'User'
  has_many :comments, class_name: 'Comment', foreign_key: 'campground_id', dependent: :destroy
  has_one :addresses, class_name: 'Address'
end
