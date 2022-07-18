class AddResultadoToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :resultado, :string
    add_index :pcds, :resultado
    add_column :pcds, :destino, :string
  end
end
