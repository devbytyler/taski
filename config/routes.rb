Rails.application.routes.draw do


  root to: 'pages#home'

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "error", to: "pages#error"

  get "blog", to: redirect("http://google.com")

  resources :projects do
      resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  get "*path", to: redirect("/error")
end
