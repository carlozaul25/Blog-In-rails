Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
	root "blogs#index"
  resources :blogs do
 resources :votes, only: [:create, :destroy]
 end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
