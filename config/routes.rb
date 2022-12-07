Rails.application.routes.draw do
  
  root to: 'public/homes#top'
    
  devise_for :users, skip: [:passwords], 
  controllers: {
  registrations: 'public/registrations',
  sessions: 'public/sessions'
}
get 'users/:id'=>'public/users#show'
get 'users/:id/edit'=>'public/users#edit'
patch 'users/:id'=>'public/users#update'
resources :users, only:[:show,:edit,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
