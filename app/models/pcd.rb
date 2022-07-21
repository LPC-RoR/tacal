class Pcd < ApplicationRecord

	ACREDITACION_DISCAPACIDAD = ['Ninguna', 'Pensión de Invalidez', 'Registro Nacional de Discapacidad (RND) - En trámite', 'Registro Nacional de Discapacidad (RND)']
	ESTADO_CIVIL = ['Soltero(a)', 'Casado(a)', 'Divorciado(a)', 'Viudo(a)']

	EXPERIENCIAS_LABORALES = ['Sin experiencia laboral', 'Con experiencia laboral informal', 'Con experiencia laboral formal']

	RESULTADOS = ['Aprobado', 'Rechazado por Consumo', 'Rechazado no cumple Perfil TACAL', 'Rechazado por no adherencia al tratamiento']
	DESTINOS = ['Operario', 'Administrativo', 'Intermediación Directa', 'Evaluación Proyectos']

	TABLA_FIELDS = [
		['nombre', 'show'], 
		['estado',  'normal']
	]

	has_one :ficha

	has_many :diagnosticos
	has_many :medicamentos
	has_many :antecedente_formaciones

	def nombre
		"#{self.nombres} #{self.apellido_paterno} #{self.apellido_materno}"
	end

	def direccion_completa
		"#{self.direccion}, #{self.comuna}. #{self.ciudad} - #{self.region}"
	end

	def educacion
		"#{self.nivel_educacional} #{self.educacion_completa} #{self.profesion_oficio}"
	end

	def repo
    	AppRepo.where(owner_class: 'Pcd').find_by(owner_id: self.id)
	end
end
