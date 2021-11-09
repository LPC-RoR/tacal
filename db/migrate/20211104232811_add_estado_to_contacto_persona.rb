class AddEstadoToContactoPersona < ActiveRecord::Migration[5.2]
  def change
    add_column :contacto_personas, :estado, :string
    add_index :contacto_personas, :estado
  end
end
