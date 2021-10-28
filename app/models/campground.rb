class Campground < ActiveRecord::Base
  attr_accessible :name, :description, :image, :price, :user_id, :address_id

  belongs_to :user, class_name: 'User'
  has_many :comments, class_name: 'Comment', foreign_key: 'user_id'
  has_one :addresses, class_name: 'Address'
end
