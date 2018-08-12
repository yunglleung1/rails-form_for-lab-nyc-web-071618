Rails.application.routes.draw do
  resources :students, only: [:new, :create, :show]
  get 'students/:id/edit', to: 'students#edit'
  patch 'students/:id', to: 'students#update'

  resources :school_classes, only: [:new, :create, :show]
  get 'school_classes/:id/edit', to: 'school_classes#edit'
  patch 'school_classes/:id', to: 'school_classes#update'
end
