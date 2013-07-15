Guinea::Application.routes.draw do

  mount_roboto

  root :to => "pages#show", :slug => 'index'

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :feedbacks, :only => :create

  resources :online_requests, :only => :create
  get 'online_request' => 'online_requests#new'

  localized do
    root :to => "pages#show", :slug => 'index'
    get ':slug' => 'pages#show', :as => :slug
    resources :pages
  end
end
