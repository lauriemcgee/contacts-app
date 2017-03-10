class ContactsController < ApplicationController
  def all_contacts_method
    @contacts = Contact.all
    render "all_contacts.html.erb"
  end
  def contact_one_method
    @contact = Contact.find_by(id: params["contact_id"])
    render "one_contact.html.erb"
  end
  def new_contact_method
    render "new_contact.html.erb"
  end
  def contact_added_method
    @contact_first_name = params["first_name"]
    render "contact_added_success.html.erb"
  end
end


