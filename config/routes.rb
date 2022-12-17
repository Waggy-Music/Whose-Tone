Rails.application.routes.draw do
  
  namespace :admin do
    get 'users/show'
    get 'users/edit'
  end
  root to: 'public/homes#top'
  get 'about' => 'public/homes#about'
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
  
  resources :informations
  resources :posts,only:[:index,:show,:edit,:update]
  resources :users,only:[:index,:show,:update]
  
  end

  scope module: :public do #URLは変えたくない、ファイル構成だけ指定のパスにしたい場合はこれ

  resources :users, only:[:show,:edit,:update,:index]
  resources :posts do
  # post '/likes'=> 'likes#create'
  # delete '/likes'=> 'likes#destroy'
  resource :likes, only:[:create,:destroy]
  resources :comments, only:[:create,:destroy]
  end
  resources :informations,only:[:index,:show]
  get '/search' => 'searches#search'
  end


    # get 'users/:id'=>'public/users#show'
    # get 'users/:id/edit'=>'public/users#edit'
    # patch 'users/:id'=>'public/users#update'
    # get 'posts/new' => 'public/posts#new'
    # post 'posts'=> 'public/posts#create'
    # get 'posts/:id'=> 'public/posts#show'
    # get 'posts'=>'public/posts#index'
    # get 'posts/:id/edit' => 'public/posts#edit'
    # patch 'posts/:id' => 'public/posts#update'
    # get 'users'=> 'public/users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
