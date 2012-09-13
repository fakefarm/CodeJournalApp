CodeJournalApp::Application.routes.draw do

  resources :questions, :tasks, :goals, :projects, :stack, :library
  resources :journal


  root to: 'static#index'

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

end
