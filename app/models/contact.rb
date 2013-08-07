class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number, :user_id

  validates :address, :email, :name, :phone_number, :presence => true

  belongs_to :user,
  :class_name  => "User",
  :foreign_key => :user_id,
  :primary_key => :id

end
