class CreateMedioContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :medio_contactos do |t|
      t.string :medio_contacto

      t.timestamps
    end
    add_index :medio_contactos, :medio_contacto
  end
end
