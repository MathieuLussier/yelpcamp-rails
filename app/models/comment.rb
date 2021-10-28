class Comment < ActiveRecord::Base
  attr_accessible :text, :user_id, :campground_id, :parent_id

  validates :text, presence: true, length: { minimum: 1, maximum: 1000 }

  belongs_to :user, class_name: 'User'
  belongs_to :campground, class_name: 'Campground'
  belongs_to :parent, class_name: "Comment", foreign_key: "parent_id"
end
