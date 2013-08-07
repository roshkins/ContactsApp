class ContactsController < ApplicationController
  def index
    render :json => User.find(params[:user_id]).contacts
  end

  def create
    contact = Contact.new(params[:contact])
    if contact.save
      redirect_to user_contacts_url(params[:user_id], contact)
    else
      render :json => contact.errors, status: :unprocessable_entity
    end
  end

  def destroy
    contact = Contact.new(params[:contact])
    if  contact.destroy
      redirect_to users_url(params[:user_id])
    else
      render :json => contact.errors, :status => :unprocessable_entity
    end

  end

  def update
    # find the contact
    # update its attributes
    # contact = Contact.find(params[:id])
    # contact.assign_attributes(params[:contact])
    contact = Contact.new(params[:contact])
    if contact.update
      redirect_to user_contact_url(params[:user_id], params[:id])
    else
      render :json => contact.errors, :status => :unprocessable_entity
    end
  end

  def show
    contact = Contact.find(params[:id])
    if contact.belongs_to_user?(params[:user_id])
      render :json => contact
    else
      render :text => "404: Not Found", status: :not_found
    end
  end

end


