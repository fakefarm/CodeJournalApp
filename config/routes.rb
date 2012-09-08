CodeJournalApp::Application.routes.draw do

resources :questions, :tasks, :goals, :projects, :stack, :library
resources :journal

get 'index2' => 'questions#index2'

get 'haml' => 'static#hamltest'
get 'hello' => 'static#hello'



root to: 'static#index'

end
