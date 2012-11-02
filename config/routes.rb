Srinipop::Application.routes.draw do
  root :to => "profiles#index"

  resources :profiles do
    resources :jokes
  end
end
