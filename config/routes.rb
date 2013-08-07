ContactsApp::Application.routes.draw do
   resources :users do
     resources :contacts, :only => [:index]
   end

   resources :contacts, :except => [:index]

end
