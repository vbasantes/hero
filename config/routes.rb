Rails.application.routes.draw do
  root 'home#index' 
  get 'home/team'
end
