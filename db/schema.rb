# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_21_151207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "antecedente_formaciones", force: :cascade do |t|
    t.string "periodo"
    t.string "titulo_grado"
    t.string "institucion"
    t.integer "pcd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pcd_id"], name: "index_antecedente_formaciones_on_pcd_id"
  end

  create_table "app_administradores", force: :cascade do |t|
    t.string "administrador"
    t.string "email"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_app_administradores_on_email"
    t.index ["usuario_id"], name: "index_app_administradores_on_usuario_id"
  end

  create_table "app_archivos", force: :cascade do |t|
    t.string "archivo"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_archivos_on_owner_class"
    t.index ["owner_id"], name: "index_app_archivos_on_owner_id"
  end

  create_table "app_contactos", force: :cascade do |t|
    t.string "nombre"
    t.string "telefono"
    t.string "email"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_contactos_on_owner_class"
    t.index ["owner_id"], name: "index_app_contactos_on_owner_id"
  end

  create_table "app_dir_dires", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_app_dir_dires_on_child_id"
    t.index ["parent_id"], name: "index_app_dir_dires_on_parent_id"
  end

  create_table "app_directorios", force: :cascade do |t|
    t.string "directorio"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["directorio"], name: "index_app_directorios_on_directorio"
    t.index ["owner_class"], name: "index_app_directorios_on_owner_class"
    t.index ["owner_id"], name: "index_app_directorios_on_owner_id"
  end

  create_table "app_documentos", force: :cascade do |t|
    t.string "documento"
    t.boolean "publico"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_documentos_on_owner_class"
    t.index ["owner_id"], name: "index_app_documentos_on_owner_id"
  end

  create_table "app_imagenes", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.string "credito_imagen"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre"], name: "index_app_imagenes_on_nombre"
    t.index ["owner_class"], name: "index_app_imagenes_on_owner_class"
    t.index ["owner_id"], name: "index_app_imagenes_on_owner_id"
  end

  create_table "app_mejoras", force: :cascade do |t|
    t.text "detalle"
    t.string "estado"
    t.string "owner_class"
    t.integer "owner_id"
    t.integer "app_perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_perfil_id"], name: "index_app_mejoras_on_app_perfil_id"
    t.index ["estado"], name: "index_app_mejoras_on_estado"
    t.index ["owner_class"], name: "index_app_mejoras_on_owner_class"
    t.index ["owner_id"], name: "index_app_mejoras_on_owner_id"
  end

  create_table "app_nominas", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_app_nominas_on_email"
  end

  create_table "app_observaciones", force: :cascade do |t|
    t.text "detalle"
    t.string "owner_class"
    t.integer "owner_id"
    t.integer "app_perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_perfil_id"], name: "index_app_observaciones_on_app_perfil_id"
    t.index ["owner_class"], name: "index_app_observaciones_on_owner_class"
    t.index ["owner_id"], name: "index_app_observaciones_on_owner_id"
  end

  create_table "app_perfiles", force: :cascade do |t|
    t.string "email"
    t.integer "usuario_id"
    t.integer "app_administrador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_administrador_id"], name: "index_app_perfiles_on_app_administrador_id"
    t.index ["email"], name: "index_app_perfiles_on_email"
    t.index ["usuario_id"], name: "index_app_perfiles_on_usuario_id"
  end

  create_table "app_repos", force: :cascade do |t|
    t.string "repositorio"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_repos_on_owner_class"
    t.index ["owner_id"], name: "index_app_repos_on_owner_id"
    t.index ["repositorio"], name: "index_app_repos_on_repositorio"
  end

  create_table "b_clave_facetas", force: :cascade do |t|
    t.string "modelo"
    t.string "campo"
    t.string "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campo"], name: "index_b_clave_facetas_on_campo"
    t.index ["modelo"], name: "index_b_clave_facetas_on_modelo"
  end

  create_table "b_claves", force: :cascade do |t|
    t.string "b_clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["b_clave"], name: "index_b_claves_on_b_clave"
  end

  create_table "b_indice_facetas", force: :cascade do |t|
    t.integer "b_clave_faceta_id"
    t.string "ref_class"
    t.integer "ref_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["b_clave_faceta_id"], name: "index_b_indice_facetas_on_b_clave_faceta_id"
    t.index ["ref_class"], name: "index_b_indice_facetas_on_ref_class"
    t.index ["ref_id"], name: "index_b_indice_facetas_on_ref_id"
  end

  create_table "b_indices", force: :cascade do |t|
    t.integer "b_clave_id"
    t.string "ref_class"
    t.integer "ref_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["b_clave_id"], name: "index_b_indices_on_b_clave_id"
    t.index ["ref_class"], name: "index_b_indices_on_ref_class"
    t.index ["ref_id"], name: "index_b_indices_on_ref_id"
  end

  create_table "b_palabras", force: :cascade do |t|
    t.string "b_palabra"
    t.integer "b_clave_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["b_clave_id"], name: "index_b_palabras_on_b_clave_id"
    t.index ["b_palabra"], name: "index_b_palabras_on_b_palabra"
  end

  create_table "b_reglas", force: :cascade do |t|
    t.string "idioma"
    t.string "tipo_palabra"
    t.string "accion"
    t.string "b_regla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accion"], name: "index_b_reglas_on_accion"
    t.index ["idioma"], name: "index_b_reglas_on_idioma"
    t.index ["tipo_palabra"], name: "index_b_reglas_on_tipo_palabra"
  end

  create_table "contacto_empresas", force: :cascade do |t|
    t.string "razon_social"
    t.string "rut"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "app_perfil_id"
    t.string "estado"
    t.index ["app_perfil_id"], name: "index_contacto_empresas_on_app_perfil_id"
    t.index ["estado"], name: "index_contacto_empresas_on_estado"
  end

  create_table "contacto_personas", force: :cascade do |t|
    t.string "nombres"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "rut"
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "app_perfil_id"
    t.string "estado"
    t.index ["app_perfil_id"], name: "index_contacto_personas_on_app_perfil_id"
    t.index ["estado"], name: "index_contacto_personas_on_estado"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "periodo"
    t.string "titulo_grado"
    t.string "institucion"
    t.integer "pcd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pcd_id"], name: "index_cursos_on_pcd_id"
  end

  create_table "diagnosticos", force: :cascade do |t|
    t.string "diagnostico"
    t.string "secuela"
    t.boolean "hospitalizacion"
    t.date "ultima_crisis"
    t.integer "pcd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diagnostico"], name: "index_diagnosticos_on_diagnostico"
    t.index ["pcd_id"], name: "index_diagnosticos_on_pcd_id"
  end

  create_table "dir_dires", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_dir_dires_on_child_id"
    t.index ["parent_id"], name: "index_dir_dires_on_parent_id"
  end

  create_table "dispositivo_atenciones", force: :cascade do |t|
    t.string "dispositivo_atencion"
    t.string "lugar_atencion"
    t.string "profesional"
    t.string "frecuencia_control"
    t.boolean "tratamiento"
    t.integer "pcd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pcd_id"], name: "index_dispositivo_atenciones_on_pcd_id"
  end

  create_table "etnias", force: :cascade do |t|
    t.string "etnia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etnia"], name: "index_etnias_on_etnia"
  end

  create_table "fichas", force: :cascade do |t|
    t.date "fecha_entrevista"
    t.string "modalidad_entrevista"
    t.integer "evaluador_id"
    t.string "puntualidad"
    t.string "atento"
    t.string "interesado"
    t.string "motivado"
    t.string "acompanates"
    t.string "aseado"
    t.string "vestimenta_acorde"
    t.string "comunicacion_autonoma"
    t.boolean "oral"
    t.boolean "gestual"
    t.boolean "escrita"
    t.string "con_quien_vives"
    t.string "quien_vives_otro"
    t.string "municipalidad"
    t.string "agrupacion"
    t.string "familia"
    t.string "comunidad_otros"
    t.string "antecedentes_penales"
    t.string "certificado_antecedentes"
    t.string "antecedentes_consumo"
    t.string "consumo_otros"
    t.string "otros_diagnosticos"
    t.string "ayuda_tecnica"
    t.string "cual_ayuda"
    t.string "atencion"
    t.string "vestuario"
    t.string "aseo_personal"
    t.string "alimentacion"
    t.string "control_esfinteres"
    t.string "manejo_dinero"
    t.string "movilidad"
    t.string "uso_celular"
    t.string "manejo_computacional"
    t.string "otros"
    t.string "idiomas"
    t.string "documentos_legales_vigentes"
    t.string "visa_trabajo_vigente"
    t.text "objetivo"
    t.string "experiencia_laboral"
    t.string "laboral_formal"
    t.string "laboral_informal"
    t.string "otro_formal"
    t.string "otro_informal"
    t.string "profesion_titulo_tecnico"
    t.text "intereses_laborales"
    t.integer "pcd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluador_id"], name: "index_fichas_on_evaluador_id"
    t.index ["pcd_id"], name: "index_fichas_on_pcd_id"
  end

  create_table "h_imagenes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre"], name: "index_h_imagenes_on_nombre"
  end

  create_table "h_links", force: :cascade do |t|
    t.string "texto"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "h_temas", force: :cascade do |t|
    t.string "tema"
    t.string "detalle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tema"], name: "index_h_temas_on_tema"
  end

  create_table "hlp_pasos", force: :cascade do |t|
    t.integer "orden"
    t.string "paso"
    t.text "detalle"
    t.integer "hlp_tutorial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hlp_tutorial_id"], name: "index_hlp_pasos_on_hlp_tutorial_id"
    t.index ["orden"], name: "index_hlp_pasos_on_orden"
  end

  create_table "hlp_tutoriales", force: :cascade do |t|
    t.string "tutorial"
    t.string "clave"
    t.text "detalle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clave"], name: "index_hlp_tutoriales_on_clave"
  end

  create_table "medicamentos", force: :cascade do |t|
    t.string "medicamento"
    t.string "dosis"
    t.boolean "autonomia_administracion"
    t.boolean "adherencia_tratamiento"
    t.integer "pcd_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicamento"], name: "index_medicamentos_on_medicamento"
    t.index ["pcd_id"], name: "index_medicamentos_on_pcd_id"
  end

  create_table "medio_contactos", force: :cascade do |t|
    t.string "medio_contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medio_contacto"], name: "index_medio_contactos_on_medio_contacto"
  end

  create_table "nacionalidades", force: :cascade do |t|
    t.string "nacionalidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nacionalidad"], name: "index_nacionalidades_on_nacionalidad"
  end

  create_table "nivel_educacionales", force: :cascade do |t|
    t.string "nivel_educacional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nivel_educacional"], name: "index_nivel_educacionales_on_nivel_educacional"
  end

  create_table "pcds", force: :cascade do |t|
    t.string "rut"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "nombres"
    t.date "fecha_nacimiento"
    t.string "genero"
    t.string "nacionalidad"
    t.string "nivel_educacional"
    t.string "profesion_oficio"
    t.string "direccion"
    t.string "comuna"
    t.string "ciudad"
    t.string "region"
    t.string "telefono_personal"
    t.string "telefono_casa"
    t.string "correo_electronico"
    t.string "acreditacion_discapacidad"
    t.string "estado_civil"
    t.integer "numero_hijos"
    t.string "responsabilidad_parental"
    t.string "situacion_social"
    t.boolean "interdicto"
    t.string "etnia"
    t.boolean "cuenta_rut"
    t.string "condicionado"
    t.boolean "conexion_internet"
    t.string "proveedor_internet"
    t.string "medio_contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "estado"
    t.string "educacion_completa"
    t.string "facebook"
    t.string "instagram"
    t.boolean "fisica"
    t.boolean "sensorial_auditiva"
    t.boolean "sensorial_visual"
    t.boolean "psiquica"
    t.boolean "intelectual"
    t.string "experiencia_laboral"
    t.boolean "ope_linea_productiva"
    t.boolean "ope_bodega"
    t.boolean "ope_aseo"
    t.boolean "ope_logistica"
    t.boolean "ope_pioneta"
    t.boolean "ope_grua_horquilla"
    t.string "otro_operario"
    t.boolean "adm_rrhh"
    t.boolean "adm_contabilidad"
    t.boolean "adm_ventas"
    t.boolean "adm_finanzas"
    t.boolean "adm_general"
    t.string "otro_administrativo"
    t.string "interes_laboral_1"
    t.string "interes_laboral_2"
    t.string "interes_laboral_3"
    t.string "nombre_referencia"
    t.string "empresa_referencia"
    t.string "telefono_referencia"
    t.string "email_referencia"
    t.string "resultado"
    t.string "destino"
    t.string "vestuario"
    t.string "aseo_personal"
    t.string "alimentacion"
    t.string "control_esfinter"
    t.string "manejo_dinero"
    t.string "movilidad"
    t.string "uso_celular"
    t.string "vive_con"
    t.string "vive_con_otro"
    t.string "manejo_computacional"
    t.string "documentos_legales_vigentes"
    t.string "visa_trabajo_vigente"
    t.index ["estado"], name: "index_pcds_on_estado"
    t.index ["resultado"], name: "index_pcds_on_resultado"
    t.index ["rut"], name: "index_pcds_on_rut"
  end

  create_table "regiones", force: :cascade do |t|
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region"], name: "index_regiones_on_region"
  end

  create_table "sb_elementos", force: :cascade do |t|
    t.integer "orden"
    t.integer "nivel"
    t.string "tipo"
    t.string "elemento"
    t.string "acceso"
    t.boolean "activo"
    t.string "despliegue"
    t.string "controlador"
    t.integer "sb_lista_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orden"], name: "index_sb_elementos_on_orden"
    t.index ["sb_lista_id"], name: "index_sb_elementos_on_sb_lista_id"
  end

  create_table "sb_listas", force: :cascade do |t|
    t.string "lista"
    t.string "acceso"
    t.string "link"
    t.boolean "activa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "st_estados", force: :cascade do |t|
    t.integer "orden"
    t.string "st_estado"
    t.string "destinos"
    t.string "destinos_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "st_modelo_id"
    t.index ["orden"], name: "index_st_estados_on_orden"
    t.index ["st_estado"], name: "index_st_estados_on_st_estado"
    t.index ["st_modelo_id"], name: "index_st_estados_on_st_modelo_id"
  end

  create_table "st_logs", force: :cascade do |t|
    t.integer "perfil_id"
    t.string "class_name"
    t.integer "objeto_id"
    t.string "e_origen"
    t.string "e_destino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["e_destino"], name: "index_st_logs_on_e_destino"
    t.index ["e_origen"], name: "index_st_logs_on_e_origen"
    t.index ["objeto_id"], name: "index_st_logs_on_objeto_id"
    t.index ["perfil_id"], name: "index_st_logs_on_perfil_id"
  end

  create_table "st_modelos", force: :cascade do |t|
    t.string "st_modelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["st_modelo"], name: "index_st_modelos_on_st_modelo"
  end

  create_table "st_perfil_estados", force: :cascade do |t|
    t.string "st_perfil_estado"
    t.string "rol"
    t.integer "st_perfil_modelo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "st_perfil_modelos", force: :cascade do |t|
    t.string "st_perfil_modelo"
    t.string "rol"
    t.boolean "ingresa_registros"
    t.integer "app_nomina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_nomina_id"], name: "index_st_perfil_modelos_on_app_nomina_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
