Rails.application.routes.draw do
  devise_for :developers
  resources :teams do
    resource :project, except: :destroy do
      resource :gemfile, only: %i(show edit update) do
        resources :suggestions, only: %i(index create destroy update)
      end
    end
  end
end
