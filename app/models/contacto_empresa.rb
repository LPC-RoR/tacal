class ContactoEmpresa < ApplicationRecord

	TABLA_FIELDS = [
		['razon_social', 'normal']
#		['email',  'normal']
	]

	belongs_to :app_perfil, optional: true

	def observaciones
		obs = AppObservaciones.where(owner_class: 'ContactoEmpresa')
		obs = (obs.empty? ? obs : obs.where(owner_id: self.id))
		obs.empty? ? obs : obs.order(:created_at)
	end
end
