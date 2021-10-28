class Address < ActiveRecord::Base
  attr_accessible :street, :city, :state, :country, :zip_code

  belongs_to :user, class_name: 'User', polymorphic: true
  belongs_to :campground, class_name: 'Campground', polymorphic: true
end
