Rails.application.routes.draw do
  get "/firstcontact" => "contacts#contact_one_method"
end
