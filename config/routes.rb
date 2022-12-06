Rails.application.routes.draw do
  
  root to: 'public/homes#top'
  # devise_for :artists, controllers: {
  #   sessions:      'public/sessions',
  #   passwords:     'public/passwords',
  #   registrations: 'public/registrations'}
    
  devise_for :users, skip: [:passwords], 
  controllers: {
  registrations: 'public/registrations',
  sessions: 'public/sessions'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
