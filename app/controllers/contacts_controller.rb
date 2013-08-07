class ContactsController < ApplicationController
  def index
    render :json => User.find(params[:user_id]).contacts
  end

  def create
    contact = Contact.new(params[:contact])
    if contact.save
      redirect_to contacts_url(params[:user_id])
    else
      render :json => contact.errors, status: :unprocessable_entity
    end
  end


end
