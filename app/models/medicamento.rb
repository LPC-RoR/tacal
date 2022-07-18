class Medicamento < ApplicationRecord

	TABLA_FIELDS = [
		['medicamento', 'show'], 
#		['estado',  'normal']
	]

	belongs_to :pcd

end
