class ContactsController < ApplicationController
  def contact_one_method
    @contact = Contact.first
    @second_contact = Contact.second
    @third_contact = Contact.third
    @contacts = Contact.all 
    render "contact_one.html.erb"
  end
end
