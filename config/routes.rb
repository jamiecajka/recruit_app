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

  resources :recruits, except: [:destroy] do
    resources :schools, only: [:index, :show]
    resources :positions, only: [:index, :show]
    resources :cnotes, only: [:index, :show, :new]
    resources :mnotes, only: [:index, :show, :new]
    resources :levels, only: [:index, :show]
    resources :funnels, only: [:index, :show]
    resources :years, only: [:index, :show]
    resources :recruitfunnels, only: [:index, :show]
  end

  resources :cnotes do
    resources :users, only: [:index, :show]
    resources :recruits, only: [:index, :show]
  end

  resources :mnotes do
    resources :recruits, only: [:index, :show]
  end

  resources :applicants, except: [:destroy] do
    resources :years, only: [:index, :show]
    resources :positions, only: [:index, :show]
    resources :schools, only: [:index, :new]
  end

  resources :recruits_funnels do
    resources :recruits, only: [:index, :show]
    resources :funnels, only: [:index, :show]
  end

  resources :levels, except: [:destroy]
  resources :funnels, except: [:destroy]
  resources :years, except: [:destroy]
  resources :schools, except: [:destroy]
  resources :positions, except: [:destroy]


end
