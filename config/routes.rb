Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root 'home_pages#home'
  get '/search' => 'home_pages#search'
  get '/show' => 'home_pages#show'
  post '/save' => 'home_pages#save'
  delete '/save' => 'home_pages#destroy'
  get '/saving_list' => 'home_pages#save_index'
  get '/assessment_list' => 'home_pages#assessment_index'
  post '/comment' => 'home_pages#comment'
end
