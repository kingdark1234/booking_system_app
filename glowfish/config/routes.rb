Glowfish::Application.routes.draw do
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  
  devise_for :users

  resources :pages
  resources :areas
  resources :rooms
  resources :events 

  match '/:id' => 'high_voltage/calendar#index', :as => :static, :via => :get
  root :to => 'high_voltage/calendar#index', :id => 'index'
end
