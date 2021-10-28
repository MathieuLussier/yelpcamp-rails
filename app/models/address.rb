class Address < ActiveRecord::Base
  attr_accessible :street, :city, :state, :country, :zip_code

  validates :street, presence: true, length: { minimum: 3, maximum: 50 }
  validates :city, presence: true, length: { minimum: 3, maximum: 50 }
  validates :state, presence: true, length: { minimum: 3, maximum: 50 }
  validates :country, presence: true, length: { minimum: 3, maximum: 50 }
  validates :zip_code, presence: true, length: { minimum: 3, maximum: 50 }

  has_many :user, class_name: 'User'
  has_many :campground, class_name: 'Campground'
end
