Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
}
  devise_scope :user do

  authenticated :user do
    root 'resolutions#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  resources :resolutions do
    resources :tasks

  end
  resources :users


  root to: "devise/sessions#new"
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
