class Comment < ActiveRecord::Base
  attr_accessible :text, :user_id, :campground_id, :parent_id

  validates :text, presence: true, length: { minimum: 1, maximum: 1000 }

  belongs_to :user, foreign_key: :user_id, class_name: 'User'
  belongs_to :campground, foreign_key: :campground_id, class_name: 'Campground'
  belongs_to :parent, foreign_key: :parent_id, class_name: 'Comment'
end
