Rails.application.routes.draw do
  get "/one_contact_url/:contact_id" => "contacts#contact_one_method"
  get "/all_contacts_url" => "contacts#all_contacts_method"
  get "/new_contact_url" => "contacts#new_contact_method"
  post "/contact_added_url" => "contacts#contact_added_method"
  
end
