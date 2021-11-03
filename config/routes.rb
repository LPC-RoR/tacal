Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # SCOPE APLICACION
  scope module: 'aplicacion' do
    resources :app_administradores
    resources :app_nominas
    resources :app_perfiles do
      match :desvincular, via: :get, on: :member
    end
    resources :app_observaciones
    resources :app_mejoras

    resources :app_recursos do
      collection do
        match :ayuda, via: :get
        match :home, via: :get
        match :administracion, via: :get
        match :procesos, via: :get
      end
    end

    resources :app_imagenes
  end

  scope module: 'home' do
    resources :h_imagenes
    resources :h_links
    resources :h_temas
  end

  scope module: 'sidebar' do
    resources :sb_elementos
    resources :sb_listas do
      resources :sb_elementos
    end
  end

  scope module: 'help' do
    resources :hlp_pasos
    resources :hlp_tutoriales do
      resources :hlp_pasos
    end

#    resources :conversaciones
#    resources :mensajes do 
#      match :estado, via: :get, on: :member
#      match :respuesta, via: :post, on: :collection
#    end
  end

  devise_for :usuarios
#  devise_for :usuarios, controllers: {
#        confirmations: 'usuarios/confirmations',
#        omniauth_callbacks: 'usuarios/omniauth_callbacks',
#        passwords: 'usuarios/passwords',
#        registrations: 'usuarios/registrations',
#        sessions: 'usuarios/sessions',
#        unlocks: 'usuarios/unlocks'
#      }

  root 'aplicacion/app_recursos#home'

end
