Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
    end

    # catch-all other vN and redirect it to the latest version
    match 'v:api/*path', :to => redirect("/api/v1/%{path}"), via: [:get, :post, :put, :patch, :delete]
  end
end
