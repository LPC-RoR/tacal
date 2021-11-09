class CreateContactoPersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :contacto_personas do |t|
      t.string :nombres
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :rut
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
