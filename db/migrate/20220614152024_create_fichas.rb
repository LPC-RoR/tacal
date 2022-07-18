class CreateFichas < ActiveRecord::Migration[5.2]
  def change
    create_table :fichas do |t|
      t.date :fecha_entrevista
      t.string :modalidad_entrevista
      t.integer :evaluador_id
      t.string :puntualidad
      t.string :atento
      t.string :interesado
      t.string :motivado
      t.string :acompanates
      t.string :aseado
      t.string :vestimenta_acorde
      t.string :comunicacion_autonoma
      t.boolean :oral
      t.boolean :gestual
      t.boolean :escrita
      t.string :con_quien_vives
      t.string :quien_vives_otro
      t.string :municipalidad
      t.string :agrupacion
      t.string :familia
      t.string :comunidad_otros
      t.string :antecedentes_penales
      t.string :certificado_antecedentes
      t.string :antecedentes_consumo
      t.string :consumo_otros
      t.string :otros_diagnosticos
      t.string :ayuda_tecnica
      t.string :cual_ayuda
      t.string :atencion
      t.string :vestuario
      t.string :aseo_personal
      t.string :alimentacion
      t.string :control_esfinteres
      t.string :manejo_dinero
      t.string :movilidad
      t.string :uso_celular
      t.string :manejo_computacional
      t.string :otros
      t.string :idiomas
      t.string :documentos_legales_vigentes
      t.string :visa_trabajo_vigente
      t.text :objetivo
      t.string :experiencia_laboral
      t.string :laboral_formal
      t.string :laboral_informal
      t.string :otro_formal
      t.string :otro_informal
      t.string :profesion_titulo_tecnico
      t.text :intereses_laborales
      t.integer :pcd_id

      t.timestamps
    end
    add_index :fichas, :evaluador_id
    add_index :fichas, :pcd_id
  end
end
