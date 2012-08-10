Srinipop::Application.routes.draw do
  root :to => "jokes#index"
  resources :jokes

end
