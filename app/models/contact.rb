class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number, :user_id


  belongs_to :user,
  :class_name  => "User",
  :foreign_key => :user_id,
  :primary_key => :id

  def belongs_to_user?(user_id)
    user.id == user_id.to_i
  end
end
