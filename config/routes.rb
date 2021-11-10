Rails.application.routes.draw do
  resources :contacto_empresas do
    resources :app_contactos
    match :cambio_estado, via: :get, on: :member
  end
  resources :contacto_personas do
    match :cambio_estado, via: :get, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # SCOPE APLICACION
  scope module: 'aplicacion' do
    resources :app_administradores
    resources :app_nominas
    resources :app_perfiles do
      # recurso SOLO si hay manejo de ESTADOS
      resources :st_perfil_modelos
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
    resources :app_contactos
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

  scope module: 'busqueda' do
    resources :b_indice_facetas
    resources :b_indices
    resources :b_claves
    resources :b_clave_facetas
    resources :b_palabras
    resources :b_reglas
  end

  scope module: 'estados' do
    resources :st_estados do
      match :asigna, via: :get, on: :member
    end
    resources :st_modelos do 
      resources :st_estados
      match :asigna, via: :get, on: :member
    end
    resources :st_perfil_estados do
      match :desasignar, via: :get, on: :member
      match :cambia_rol, via: :get, on: :member
    end
    resources :st_perfil_modelos do
      resources :st_perfil_estados
      match :desasignar, via: :get, on: :member
      match :cambia_rol, via: :get, on: :member
      match :cambia_ingreso, via: :get, on: :member
    end
    resources :st_bandejas
    resources :st_logs
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
