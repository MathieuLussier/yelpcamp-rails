class Campground < ActiveRecord::Base
  attr_accessible :name, :description, :image, :price, :user_id, :address_id

  validates :name, presence: true, length: { minimum: 6, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :price, presence: true
  validates :address_id, presence: true
  validates :user_id, presence: true

  has_many :comments, class_name: 'Comment'
  belongs_to :user, foreign_key: :user_id, class_name: 'User'
  belongs_to :address, foreign_key: :address_id, class_name: 'Address'
end
