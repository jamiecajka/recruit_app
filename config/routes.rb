Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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
    resources :recruitfunnels
  end

  resources :recruits do
    resources :schools, only: [:index, :show]
    resources :positions, only: [:index, :show]
    resources :cnotes, only: [:index, :show, :new]
    resources :mnotes, only: [:index, :show, :new]
    resources :levels, only: [:index, :show]
    resources :funnels, only: [:index, :show]
    resources :years, only: [:index, :show]
    resources :recruitfunnels, only: [:index, :show]
    resources :statuses
  end

  resources :cnotes , except: [:index] do
    resources :users, only: [:index, :show]
    resources :recruits, only: [:index, :show]
  end

  resources :mnotes, except: [:index] do
    resources :recruits, only: [:index, :show]
  end

  resources :applicants, only: [:index] do
    resources :recruits, only: [:new]
  end

  resources :recruits_funnels do
    resources :recruits, only: [:index, :show]
    resources :funnels, only: [:index, :show]
  end

  resources :levels, except: [:show]
  resources :funnels, except: [:show]
  resources :years, except: [:show]
  resources :schools
  resources :positions, except: [:show]
  resources :searches

end
