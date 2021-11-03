module CapitanRecursosHelper
	## ------------------------------------------------------- GENERAL

	def app_setup
		{
			nombre: 'Tacal',
			home_link: 'http://www.appname.cl',
			libre_registro: true,
			logo_navbar: 'logo_navbar.png'
		}
	end

	def image_size
		{
			portada: nil,
			tema: 'half',
			foot: 'quarter'
		}
	end

	def font_size
		{
			title: 4,
			title_tema: 1,
			detalle_tema: 6
		}
	end

	def app_color
		{
			app: 'dark',
			navbar: 'dark',
			help: 'dark',
			data: 'success',
			title_tema: 'primary',
			detalle_tema: 'primary'
		}
	end

	def image_class
		{
			portada: img_class[:centrada],
			image_tema: img_class[:centrada],
			foot: img_class[:centrada]
		}
	end

	## ------------------------------------------------------- SIDEBAR

	def app_sidebar_controllers
		[
		]
	end

	## ------------------------------------------------------- TABLA | BTNS

	def sortable_fields
		{
			'controller' => ['campo1', 'campo2']
		}
	end

	# En modelo.html.erb define el tipo de fila de tabla
	# Se usa para marcar con un color distinto la fila que cumple el criterio
	def table_row_type(objeto)
		case objeto.class.name
		when 'Publicacion'
			if usuario_signed_in?
				if ActiveRecord::Base.connection.table_exists? 'app_perfiles'
					activo = AppPerfil.find(session[:perfil_activo]['id'])
				else
					activo = Perfil.find(session[:perfil_activo]['id'])
				end
				(objeto.carpetas.ids & activo.carpetas.ids).empty? ? 'default' : 'dark'
			else
				'default'
			end
		else
			'default'
		end
	end

	def app_alias_tabla(controller)
		controller
	end

	def app_new_button_conditions(controller)
		if [].include?(controller)
			session[:es_administrador]
		else
			true
		end
	end

	def app_crud_conditions(objeto, btn)
		if [].include?(objeto.class.name)
			session[:es_administrador]
		else
			case objeto.class.name
			when 'Clase'
				session[:es_administrador]
			else
				true
			end
		end
	end

	def estados_conditions(objeto)
		false
	end

	def x_conditions(objeto, btn)
		case objeto.class.name
		when 'Clase'
			case btn
			when 'Boton1'
				true
			when 'Boton2'
				false
			end
		else
			true
		end
	end

	def x_btns(objeto)
		case objeto.class.name
		when 'Clase'
			[
				['Boton1', '/boton1', true],
				['Boton2', '/boton2', true]
			]
        else
        	[]
		end		
	end

	def show_link_condition(objeto)
		# usado para condicionar el uso de campos show en tablas
		true
	end

	## ------------------------------------------------------- SHOW

	# Método de apoyo usado en get_new_link (abajo)
	def app_show_title(objeto)
		case objeto.class.name
		when 'Class'
			objeto.titulo
		else
			objeto.send(objeto.class.name.tableize.singularize)
		end
	end
end