class CreateContactoEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :contacto_empresas do |t|
      t.string :razon_social
      t.string :rut
      t.string :direccion

      t.timestamps
    end
  end
end
