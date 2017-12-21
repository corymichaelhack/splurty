Rails.application.routes.draw do

 root 'quotes#index'

#Create quotes resouces
 resources :quotes


 get 'about' , to: 'quotes#about'
end
