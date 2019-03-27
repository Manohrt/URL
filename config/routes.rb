Rails.application.routes.draw do
  get 'link_urls/new'
  get 'link_urls/show'
  get 'link_urls/url_lists'
  post 'link_urls/create'
  get 'link_urls/index'
  root to: 'link_urls#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
