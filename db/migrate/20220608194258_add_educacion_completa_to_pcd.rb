class AddEducacionCompletaToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :educacion_completa, :string
  end
end
