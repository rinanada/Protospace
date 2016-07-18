Rails.application.routes.draw do
 devise_for :users
#  , :controllers => {
# :sessions => 'users/sessions',
# :registrations => 'users/registrations'
# }


  # devise_scope :user do
  #   root :to => 'devise/registrations#create'
  # end

  root 'prototypes#index'

  get  '/prototypes/index'  =>    'prototypes#index'
  get  '/prototypes/new'    =>    'prototypes#new'
  get  '/prototypes/show'   =>    'prototypes#show'
   get   '/users/:id'   =>  'users#show'    #Mypageへのルーティング

end
