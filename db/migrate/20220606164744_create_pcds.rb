class CreatePcds < ActiveRecord::Migration[5.2]
  def change
    create_table :pcds do |t|
      t.string :rut
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :nombres
      t.date :fecha_nacimiento
      t.string :genero
      t.string :nacionalidad
      t.string :nivel_educacional
      t.string :profesion_oficio
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :region
      t.string :telefono_personal
      t.string :telefono_casa
      t.string :correo_electronico
      t.string :acreditacion_discapacidad
      t.string :estado_civil
      t.integer :numero_hijos
      t.string :responsabilidad_parental
      t.string :situacion_social
      t.boolean :interdicto
      t.string :etnia
      t.boolean :cuenta_rut
      t.string :condicionado
      t.boolean :conexion_internet
      t.string :proveedor_internet
      t.string :medio_contacto

      t.timestamps
    end
    add_index :pcds, :rut
  end
end
