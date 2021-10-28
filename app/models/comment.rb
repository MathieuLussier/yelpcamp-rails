class Comment < ActiveRecord::Base
  attr_accessible :text, :user_id, :campground_id

  belongs_to :user, class_name: 'User'
  belongs_to :campground, class_name: 'Campground'
end
