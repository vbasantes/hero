Rails.application.routes.draw do
  root 'home#index'
  get 'home/team'
  post 'home/team', to: 'home#team'
end
