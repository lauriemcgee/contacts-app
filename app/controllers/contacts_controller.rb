class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    @contact.save
    @contact_first_name = params[:first_name]
    render "create.html.erb"
  end
  def show
    @contact_id = params[:id]
    @contact = Contact.find_by(id: @contact_id)
    render "show.html.erb"
  end
  def edit
    @contact_id = params[:id]
    @contact = Contact.find_by(id: @contact_id)
    render "edit.html.erb"
  end
  def update
    @contact_id = params[:id]
    @contact = Contact.find_by(id: @contact_id)
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone_number = params[:phone_number]
    @contact.save
    render "update.html.erb"

  end
  def destroy
    @contact_id = params[:id]
    @contact = Contact.find_by(id: @contact_id).destroy
    render "delete.html.erb"
  end
end


