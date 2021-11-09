class AddStModeloIdToStEstado < ActiveRecord::Migration[5.2]
  def change
    add_column :st_estados, :st_modelo_id, :integer
    add_index :st_estados, :st_modelo_id
  end
end
