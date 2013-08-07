class Favorite < ActiveRecord::Base
  attr_accessible :favorited_id, :user_id

  validates :user_id, :presence => :user_id
  validates :favorited_id, :presence => true,\
  :uniqueness => true

  belongs_to :user,
  :class_name => "User",
  :foreign_key => :user_id,
  :primary_key => :id

  belongs_to :favorited,
  :class_name => "Contact",
  :foreign_key => :favorited_id,
  :primary_key => :id


end
