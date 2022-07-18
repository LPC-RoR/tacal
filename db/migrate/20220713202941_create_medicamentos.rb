class CreateMedicamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :medicamentos do |t|
      t.string :medicamento
      t.string :dosis
      t.boolean :autonomia_administracion
      t.boolean :adherencia_tratamiento
      t.integer :pcd_id

      t.timestamps
    end
    add_index :medicamentos, :medicamento
    add_index :medicamentos, :pcd_id
  end
end
