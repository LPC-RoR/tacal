module ApplicationHelper
	## ------------------------------------------------------- HOME

	def img_class 
		{
			centrada: 'mx-auto d-block'
		}
	end

	def color(ref)
		if [:app, :navbar].include?(ref)
			app_color[ref]
		elsif ['hlp_tutoriales', 'hlp_pasos'].include?(ref)
			app_color[:help]
		else
			app_color[:app]
		end
	end

	def colors
		['primary', 'secondary', 'success', 'danger', 'warning', 'info', 'light', 'dark', 'muted', 'white']
	end

	def image_sizes
		['entire', 'half', 'quarter', 'thumb']
	end

	# DEPRECATED
#	def objeto_tema_ayuda(tipo)
#		TemaAyuda.where(tipo: tipo).any? ? TemaAyuda.where(tipo: tipo).first : nil
#	end

	# DEPRECATED
#	def coleccion_tema_ayuda(tipo)
#		temas_ayuda_tipo = TemaAyuda.where(tipo: tipo)
#		if temas_ayuda_tipo.any?
#			temas_ayuda_activos = temas_ayuda_tipo.where(activo: true)
#			temas_ayuda_activos.any? ? temas_ayuda_activos.order(:orden) : nil
#		else
#			nil
#		end
#	end

	## ------------------------------------------------------- SCOPES & PARTIALS

	def controllers_scope
		{
			aplicacion: ['app_administradores', 'app_nominas', 'app_perfiles', 'app_observaciones', 'app_mejoras', 'app_imagenes', 'archivos', 'comentarios', 'directorios', 'documentos', 'imagenes', 'licencias', 'mejoras', 'observaciones', 'recursos', 'subs'],
			home:       ['h_temas', 'h_links', 'h_imagenes'],
			help:       ['conversaciones', 'mensajes', 'hlp_pasos', 'temaf_ayudas', 'hlp_tutoriales'],
			sidebar:    ['sb_listas', 'sb_elementos'],
			data:       ['caracteristicas', 'caracterizaciones', 'columnas', 'datos', 'encabezados', 'etapas', 'lineas', 'opciones', 'tablas']
		}
	end

	def scope_controller(controller)
		if controllers_scope[:aplicacion].include?(controller)
			'aplicacion'
		elsif controllers_scope[:home].include?(controller)
			'home'
		elsif controllers_scope[:help].include?(controller)
			'help'
		elsif controllers_scope[:sidebar].include?(controller)
			'sidebar'
		elsif controllers_scope[:data].include?(controller)
			'data'
		else
			nil
		end
	end

	def partial?(controller, partial)
		File.exist?("app/views/#{(scope_controller(controller).blank? ? '' : "#{scope_controller(controller)}/")}#{controller}/_#{partial}.html.erb")
	end

	def get_partial(controller, partial)
		"#{(scope_controller(controller).blank? ? '' : "#{scope_controller(controller)}/")}#{controller}/#{partial}"
	end

	## ------------------------------------------------------- MENU

	def nomenu_controllers
		['confirmations', 'mailer', 'passwords', 'registrations', 'sessions', 'unlocks']
	end

	# Obtiene los controladores que no despliegan menu
	def nomenu?(controller)
		nomenu_controllers.include?(controller)
	end

	def item_active(link)
		detalle_link = link.split('/')
		nombre_accion = (detalle_link.length == 2 ? 'index' : detalle_link[2])
		detalle_link[1] == controller_name and nombre_accion == action_name
	end

	def display_item_menu?(item, tipo_item)
		# ITEMS de MENU sólo para USUARIOS REGISTRADOS
		if session[:hay_perfil] == true
			case tipo_item
			when 'dog'
				usuario_signed_in? and session[:perfil_activo]['email'] == 'hugo.chinga.g@gmail.com'
			when 'admin'
				(usuario_signed_in? and session[:es_administrador] == true)
			when 'usuario'
				usuario_signed_in? and display_item_app(item, tipo_item)
			when 'excluir'
				false
			when 'anonimo'
				true
			end
		else
			(tipo_item == 'anonimo' ? true : false)
		end
	end

	## ------------------------------------------------------- SIDEBAR

	def base_sidebar_controllers
		[
			'sb_listas', 'sb_elementos',
			'app_recursos', 'app_administradores', 'app_nominas', 'app_perfiles', 'app_imagenes',
			'h_portadas', 'h_temas', 'h_links', 'h_imagenes',
			'hlp_tutoriales', 'hlp_pasos'
		]
	end

	def sidebar_controllers
		base_sidebar_controllers.union(app_sidebar_controllers)
	end

	## ------------------------------------------------------- TABLA

	# Obtiene los campos a desplegar en la tabla desde el objeto
	def m_tabla_fields(objeto)
		objeto.class::TABLA_FIELDS
	end

	def inline_form?(controller)
		partial?(app_alias_tabla(controller), 'inline_nuevo')
	end

	# Objtiene LINK DEL BOTON NEW
	def get_new_link(controller)
		if inline_form?(controller)
			tipo_new = 'inline_form'
		else
			tipo_new = 'normal'
		end
		if tipo_new == 'normal'
			(app_alias_tabla(controller_name) == controller or @objeto.blank?) ? "/#{controller}/new" : "/#{@objeto.class.name.tableize}/#{@objeto.id}/#{controller}/new"
		end
	end

	# Obtiene los estados de un modelo usando el controlador
	# "-tabla.html.erb"
	def c_estados(controller)
#		dejamos con comentario para eliminar completamente el uso de config/application.rb
#		Rails.configuration.x.tables.exceptions[controller][:estados]
	end

	def sortable?(controller, field)
		if sortable_fields[controller].present?
			sortable_fields[controller].include?(field) ? true : false
		else
			false
		end
	end

	def sortable(column, title = nil)
	  title ||= column.titleize
	  css_class = column == sort_column ? "current #{sort_direction}" : nil
	  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	  link_to title, {:sort => column, :direction => direction, html_options: @options}, {:class => css_class}
	end

	## ------------------------------------------------------- TABLA | BTNS
	def new_button_conditions(controller)
		if ['app_administradores', 'app_nominas'].include?(controller)
				session[:es_administrador]
		elsif ['hlp_tutoriales', 'hlp_pasos'].include?(controller)
				session[:es_administrador]
		elsif ['app_perfiles', 'usuarios', 'ind_palabras'].include?(controller)
			false
		elsif ['app_observaciones'].include?(controller)
			objeto.perfil.id == session[:perfil_activo]['id']
		else
			app_new_button_conditions(controller)
		end
	end
	
	def crud_conditions(objeto, btn)
		if ['AppAdministrador', 'AppNomina'].include?(objeto.class.name)
				session[:es_administrador]
		elsif ['HlpTutorial', 'HlpPaso'].include?(objeto.class.name)
				session[:es_administrador]
		elsif ['AppPerfil', 'Usuario'].include?(objeto.class.name)
			false
		elsif ['SbLista'].include?(objeto.class.name)
			(usuario_signed_in? and session[:perfil_activo]['email'] == 'hugo.chinga.g@gmail.com') or (session[:es_administrador] and objeto.acceso != 'dog') or (objeto.acceso == 'usuario')
		elsif ['SbElemento'].include?(objeto.class.name)
			(usuario_signed_in? and session[:perfil_activo]['email'] == 'hugo.chinga.g@gmail.com') or (session[:es_administrador] and objeto.sb_lista.acceso != 'dog') or (objeto.sb_lista.acceso == 'usuario')
		else
			app_crud_conditions(objeto, btn)
		end
	end

	def link_x_btn(objeto, accion, objeto_ref)
		ruta_raiz = "/#{objeto.class.name.tableize}/#{objeto.id}#{accion}"
		ruta_objeto = (objeto_ref and @objeto.present?) ? "#{(!!accion.match(/\?+/) ? '&' : '?')}class_name=#{@objeto.class.name}&objeto_id=#{@objeto.id}" : ''
		"#{ruta_raiz}#{ruta_objeto}"
	end

	# pregunta si tiene childs
	# "_btns_e.html.erb"
	def has_child?(objeto)
		# Considera TODO, hasta los has_many through
		objeto.class.reflect_on_all_associations(:has_many).map { |a| objeto.send(a.name).any? }.include?(true)
	end

	## ------------------------------------------------------- FORM

	def url_params(parametros)
		params_options = "n_params=#{parametros.length}"
		parametros.each_with_index do |obj, indice|
			params_options = params_options+"&class_name#{indice+1}=#{obj.class.name}&obj_id#{indice+1}=#{obj.id}"
		end
		params_options
	end

	def detail_partial(controller)
		if partial?(controller, 'detail')
			get_partial(controller, 'detail')
		else
			'0p/form/detail'
		end
	end

	## -------------------------------------------------------- TABLA & SHOW

	# Obtiene el campo para despleagar en una TABLA
	# Resuelve BT_FIELDS y d_<campo> si es necesario 
	def get_field(label, objeto)

		success = true
		label.split(':').each do |field_name|
			if success
				if objeto.class::column_names.include?(label) or objeto.class.instance_methods(false).include?(label.to_sym)
					objeto = objeto.send(field_name)
				else
					success = false
				end
			end
		end

		success ? objeto : 'Objeto NO Encontrado'

	end

	## ------------------------------------------------------- SHOW

	def show_title(objeto)
		case objeto.class.name
		when 'SbLista'
			objeto.lista
		when 'SbElemento'
			objeto.elemento
		when 'HlpTutorial'
			objeto.tutorial
		else
			app_show_title(objeto)
		end
	end

	def status?(objeto)
		partial?(controller, 'status')
#		if scope_controller(objeto.class.name.tableize).blank?
#			File.exist?("app/views/#{objeto.class.name.tableize}/_status.html.erb")
#		else
#			File.exist?("app/views/#{scope_controller(objeto.class.name.tableize)}/#{objeto.class.name.tableize}/_status.html.erb")
#		end
	end

	## ------------------------------------------------------- GENERAL

	# Manejode options para selectors múltiples
	def get_html_opts(options, label, value)
		opts = options.clone
		opts[label] = value
		opts
	end

	## ------------------------------------------------------- LIST

	def text_with_badge(text, badge_value=nil)
	    badge = content_tag :span, badge_value, class: 'badge badge-primary badge-pill'
	    text = raw "#{text} #{badge}" if badge_value
	    return text
	end

	## ------------------------------------------------------- PUBLICACION

	def get_evaluacion_publicacion(publicacion, item)
		@activo = Perfil.find(session[:perfil_activo]['id'])
		e = @activo.evaluaciones.find_by(aspecto: item, publicacion_id: publicacion.id)
		e.blank? ? '[no evaluado]' : e.evaluacion
	end

	def get_btns_evaluacion(publicacion, item)
		eval_actual = publicacion.evaluaciones.find_by(aspecto: item)
		excluido = eval_actual.blank? ? [] : [eval_actual.evaluacion]
		Publicacion::EVALUACION[item] - excluido
	end

end
