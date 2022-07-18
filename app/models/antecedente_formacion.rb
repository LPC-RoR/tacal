class AntecedenteFormacion < ApplicationRecord

	TABLA_FIELDS = [
		['titulo_grado', 'normal'], 
		['institucion',  'normal']
	]

	belongs_to :pcd

end
