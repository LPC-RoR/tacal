class RenameAppPerfilIdFromStPerfilModelo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :st_perfil_modelos, 'app_perfil_id', 'app_nomina_id'
  end
end
