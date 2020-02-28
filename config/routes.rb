Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
  controller :static_pages do
    get '/strany', action: :parties, as: :parties
    get '/kandidati', action: :subjects, as: :subjects
  end
end
