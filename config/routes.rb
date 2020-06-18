Rails.application.routes.draw do
  get 'item/index' => "item#index"
  get 'item/buy' => "item#buy"
  post 'item/create' => "item#create"
  post 'item/:id/update' => "item#update"
  post "item/:id/destroy" => "item#destroy"
  post "item/destroy_all" => "item#destroy_all"
  get "item/boughtlists" => "item#boughtlists"
  post "item/listdelete" => "item#listdelete"

  get "/" => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
