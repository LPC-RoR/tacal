class AddEstadoToContactoEmpresa < ActiveRecord::Migration[5.2]
  def change
    add_column :contacto_empresas, :estado, :string
    add_index :contacto_empresas, :estado
  end
end
