CodeJournalApp::Application.routes.draw do

resources :questions, :tasks, :goals, :projects, :stack, :library
resources :journal


root to: 'static#index'

end
