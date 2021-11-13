class StPerfilModelo < ApplicationRecord
	belongs_to :app_nomina

	has_many :st_perfil_estados

	def estados_disponibles
		estados_st_modelo = StModelo.find_by(st_modelo: self.st_perfil_modelo).st_estados
		estados_st_modelo.where.not(st_estado: self.st_perfil_estados.map {|est| est.st_perfil_estado})
	end
end
