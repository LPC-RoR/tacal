class AddAppPerfilIdToContactoEmpresa < ActiveRecord::Migration[5.2]
  def change
    add_column :contacto_empresas, :app_perfil_id, :integer
    add_index :contacto_empresas, :app_perfil_id
  end
end
