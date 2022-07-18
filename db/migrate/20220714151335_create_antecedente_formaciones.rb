class CreateAntecedenteFormaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :antecedente_formaciones do |t|
      t.string :periodo
      t.string :titulo_grado
      t.string :institucion
      t.integer :pcd_id

      t.timestamps
    end
    add_index :antecedente_formaciones, :pcd_id
  end
end
