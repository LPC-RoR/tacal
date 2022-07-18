class AddAntecedentesLaboralesToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :experiencia_laboral, :string
    add_column :pcds, :ope_linea_productiva, :boolean
    add_column :pcds, :ope_bodega, :boolean
    add_column :pcds, :ope_aseo, :boolean
    add_column :pcds, :ope_logistica, :boolean
    add_column :pcds, :ope_pioneta, :boolean
    add_column :pcds, :ope_grua_horquilla, :boolean
    add_column :pcds, :otro_operario, :string
    add_column :pcds, :adm_rrhh, :boolean
    add_column :pcds, :adm_contabilidad, :boolean
    add_column :pcds, :adm_ventas, :boolean
    add_column :pcds, :adm_finanzas, :boolean
    add_column :pcds, :adm_general, :boolean
    add_column :pcds, :otro_administrativo, :string
  end
end
