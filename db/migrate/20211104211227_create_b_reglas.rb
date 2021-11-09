class CreateBReglas < ActiveRecord::Migration[5.2]
  def change
    create_table :b_reglas do |t|
      t.string :idioma
      t.string :tipo_palabra
      t.string :accion
      t.string :b_regla

      t.timestamps
    end
    add_index :b_reglas, :idioma
    add_index :b_reglas, :tipo_palabra
    add_index :b_reglas, :accion
  end
end
