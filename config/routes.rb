Rails.application.routes.draw do
  namespace :admin do
    resources :posts

    root to: "posts#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :posts

	root 'posts#index'
end
