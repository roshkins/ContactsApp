class User < ActiveRecord::Base
  attr_accessible :username

  has_many :contacts,
  :class_name  => "Contact",
  :foreign_key => :user_id,
  :primary_key  => :id
end
