Rails.application.routes.draw do
   get '/posts/new' => 'posts#new'
   post '/posts' => 'posts#create'
   get '/posts' => 'posts#index',as:'post_index'
   get '/posts/:id' => 'posts#show',as:'post'
   get '/posts/:id/edit' => 'posts#edit', as:'edit_post'
   patch '/posts/:id' => 'posts#update', as:'update_post'
   delete '/posts/:id' => 'posts#destroy', as:'delete_post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resource :posts  
end
