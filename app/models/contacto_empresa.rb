class ContactoEmpresa < ApplicationRecord

	TABLA_FIELDS = [
		['razon_social', 'show']
#		['email',  'normal']
	]

	belongs_to :app_perfil, optional: true

	def observaciones
		obs = AppObservacion.where(owner_class: 'ContactoEmpresa')
		obs = (obs.empty? ? obs : obs.where(owner_id: self.id))
		obs.empty? ? obs : obs.order(:created_at)
	end

	def contactos
		con = AppContacto.where(owner_class: 'ContactoEmpresa')
		con = (con.empty? ? con : con.where(owner_id: self.id))
		con.empty? ? con : con.order(:created_at)
	end
end
