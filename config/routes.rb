Rails.application.routes.draw do
  
  get 'contact_us'  => "home_pages#contact_us"
  root 'home_pages#menu'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
