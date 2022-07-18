class Diagnostico < ApplicationRecord

	TABLA_FIELDS = [
		['diagnostico', 'show'], 
#		['estado',  'normal']
	]

	belongs_to :pcd

end
