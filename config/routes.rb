Rails.application.routes.draw do
  
  root to: 'public/homes#top'
  get '/admin' => 'admin/homes#top'
  
  devise_for :users, skip: [:passwords], 
  controllers: {
  registrations: 'public/registrations',
  sessions: 'public/sessions'
}

  devise_for :admin, skip:[:passwords],
  controllers:{
  registrations: "admin/registrations",
  sessions: 'admin/sessions' 
  }
  
  namespace :admin do
  
  resources :posts, only:[:index,:create,:show,:edit,:update,:new]
  
  end

# namespace :public do
  get 'users/:id'=>'public/users#show'
  get 'users/:id/edit'=>'public/users#edit'
  patch 'users/:id'=>'public/users#update'
  resources :users, only:[:show,:edit,:update]
  get 'posts/new' => 'public/posts#new'
  post 'posts'=> 'public/posts#create'
  get 'posts/:id'=> 'public/posts#show'
  get 'posts'=>'public/posts#index'
  get 'posts/:id/edit' => 'public/posts#edit'
  patch 'posts/:id' => 'public/posts#update'
  resources :posts
  # end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
