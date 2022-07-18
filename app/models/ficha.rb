class Ficha < ApplicationRecord
	belongs_to :pcd

	def evaluador
		email = Usuario.find(self.evaluador_id).email
		administrador = AppAdministrador.find_by(email: email)
		if administrador.blank?
			AppNomina.find_by(email: email).nomina
		else
			administrador.administrador
		end
	end
end
