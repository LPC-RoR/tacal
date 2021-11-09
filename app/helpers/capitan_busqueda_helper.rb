module CapitanBusquedaHelper
	# usamos to_sym para acceder a :nombre, :modelo1
	def estructura_busqueda 
		{
		nombre: {
			modelo1: {
				campos: ['campo1', 'objeto1:campo3'],
				facetas: ['campo4', 'objeto2:campo5']
				}
			}
		}
	end

	def singular?(str)
		str.singularize == str
	end

	def clave_palabra(palabra)
		clave = (singular?(palabra) ? palabra : palabra.singularize )
	end

	def palabra(palabra)
		palabra.strip.downcase
	end
end