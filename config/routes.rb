Rails.application.routes.draw do
  root 'users#new'

  devise_for :users

  resources :users do
    resources :recruits
    resources :schools
    resources :positions
    resources :cnotes
    resources :mnotes
    resources :levels
    resources :funnels
    resources :years
    resources :applicants, only: [:index, :show]
    resources :recruitfunnels
  end

  resources :recruits, only: [:index] do
      get 'search'
  end

  resources :recruits, except: [:destroy] do
    resources :recruits
    resources :schools
    resources :positions
    resources :cnotes
    resources :mnotes
    resources :levels
    resources :funnels
    resources :years
    resources :recruitfunnels
  end

  resources :schools, except: [:destroy]

  resources :positions, except: [:destroy]

  resources :cnotes do
    resources :users
    resources :recruits
  end

  resources :mnotes do
    resources :recruits
  end

  resources :levels, except: [:destroy]

  resources :funnels, except: [:destroy]

  resources :years, except: [:destroy]

  resources :applicants, except: [:destroy] do
    resources :years
    resources :positions
    resources :schools, only: [:index, :new]
  end

  resources :recruits_funnels do
    resources :recruits
    resources :funnels
  end

  resources :searches

end
