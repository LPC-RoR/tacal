class CreateBIndiceFacetas < ActiveRecord::Migration[5.2]
  def change
    create_table :b_indice_facetas do |t|
      t.integer :b_clave_faceta_id
      t.string :ref_class
      t.integer :ref_id

      t.timestamps
    end
    add_index :b_indice_facetas, :b_clave_faceta_id
    add_index :b_indice_facetas, :ref_class
    add_index :b_indice_facetas, :ref_id
  end
end
