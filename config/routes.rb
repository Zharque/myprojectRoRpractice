Rails.application.routes.draw do
  root 'root#index'
  get '/contact' , to: "root#contact"
  get '/about' , to: "root#about"
  get '/index' , to: "root#index"
  get '/response' , to: "root#api"
  get '/error' , to: "root#errorTest"
  get '/user/:id/:name' , to: "root#user"
  
  match '*path', to: 'root#errorTest', via: :all 
end
