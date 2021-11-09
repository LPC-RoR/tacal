class CreateBClaveFacetas < ActiveRecord::Migration[5.2]
  def change
    create_table :b_clave_facetas do |t|
      t.string :modelo
      t.string :campo
      t.string :valor

      t.timestamps
    end
    add_index :b_clave_facetas, :modelo
    add_index :b_clave_facetas, :campo
  end
end
