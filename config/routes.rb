Rails.application.routes.draw do
  root to: 'public/homes#top'
  devise_for :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
