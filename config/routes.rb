require 'sidekiq/web'
Rails.application.routes.draw do
  mount Decidim::Core::Engine => '/'
  authenticate(:admin) do
    mount Sidekiq::Web => '/sidekiq'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
