class AddAppPefilIdToContactoPersona < ActiveRecord::Migration[5.2]
  def change
    add_column :contacto_personas, :app_perfil_id, :integer
    add_index :contacto_personas, :app_perfil_id
  end
end
