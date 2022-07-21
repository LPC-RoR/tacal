class AddDocumentosMigracionToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :documentos_legales_vigentes, :string
    add_column :pcds, :visa_trabajo_vigente, :string
  end
end
