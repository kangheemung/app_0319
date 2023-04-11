Rails.application.routes.draw do

 root'staticpages#home'
  get 'staticpages/help'=>'staticpages#help',as:'help'
  get 'staticpages/about'=>'staticpages#about',as:'about'
  get 'staticpages/contact'=>'staticpages#contact',as:'contact'
 
  get 'sessions/new'=>'sessions#new',as:'sessions_new'
  delete'sessions/destoy'=>'sessions#destroy',as: 'logout'
  post 'sessions/create'=>'sessions#create', as: 'sessions_create'

  get 'users/new'=>'users#new',as:'users_new'
  post'users/create'=>'users#create',as:'users_create'
  get 'users/index'=>'users#index',as:'users_index'
  get 'users/:id/edit'=>'users#edit',as:'users_edit'
  patch'users/:id/update'=>'users#update',as:'users_update'
  get 'users/:id'=>'users#show',as:'users_show'
  
  get 'microposts/index'=>'microposts#index',as:'p_index'
  get 'microposts/new'=>'microposts#new',as:'p_new'
  post 'microposts/create'=>'microposts#create',as:'p_create'
  patch 'microposts/:user_id/update'=>'microposts#update',as:'p_update'
  get 'microposts/:user_id/edit'=>'microposts#edit',as:'p_edit'
  get 'microposts/:user_id'=>'microposts#show',as:'p_show'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
