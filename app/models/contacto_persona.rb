class ContactoPersona < ApplicationRecord

	TABLA_FIELDS = [
		['nombre', 'show'], 
		['email',  'normal']
	]

	belongs_to :app_perfil, optional: true

	def observaciones
		obs = AppObservaciones.where(owner_class: 'ContactoEmpresa')
		obs = (obs.empty? ? obs : obs.where(owner_id: self.id))
		obs.empty? ? obs : obs.order(:created_at)
	end

	def nombre
		"#{nombres} #{apellido_paterno} #{apellido_materno}"
	end
end
