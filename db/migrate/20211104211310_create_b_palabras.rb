class CreateBPalabras < ActiveRecord::Migration[5.2]
  def change
    create_table :b_palabras do |t|
      t.string :b_palabra
      t.integer :b_clave_id

      t.timestamps
    end
    add_index :b_palabras, :b_palabra
    add_index :b_palabras, :b_clave_id
  end
end
