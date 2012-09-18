CodeJournalApp::Application.routes.draw do

  resources :tasks, :goals, :projects, :stack, :library
  resources :journal, :users

  resources :questions do
    resources :answers
  end



  root to: 'static#index'

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

end
