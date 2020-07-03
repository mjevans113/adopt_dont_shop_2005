Rails.application.routes.draw do
  get '/', to: 'welcome#index'

  get    '/shelters',          to: 'shelters#index'
  get    '/shelters/new',      to: 'shelters#new'
  post   '/shelters',          to: 'shelters#create'
  get    '/shelters/:id/pets', to: 'shelters#pets'
  get    '/shelters/:id/edit', to: 'shelters#edit'
  get    '/shelters/:id',      to: 'shelters#show'
  patch  '/shelters/:id',      to: 'shelters#update'
  delete '/shelters/:id',      to: 'shelters#destroy'

  get    '/pets', to: 'pets#index'
end
