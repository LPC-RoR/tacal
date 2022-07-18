class AddEstadoToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :estado, :string
    add_index :pcds, :estado
  end
end
