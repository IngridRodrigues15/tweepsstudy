Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tweeps do
    collection do
      get 'most_relevants', constraints: { format: 'json' }
    end
  end

end
