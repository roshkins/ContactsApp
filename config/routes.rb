ContactsApp::Application.routes.draw do
   resources :users do
     resources :contacts
     resources :favorites, :except  => [:show, :new, :update]
   end



end
