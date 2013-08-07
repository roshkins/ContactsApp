ContactsApp::Application.routes.draw do
   resources :users do
     resources :contacts
     resources :favorites
   end



end
