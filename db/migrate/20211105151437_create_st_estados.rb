class CreateStEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :st_estados do |t|
      t.integer :orden
      t.string :st_estado
      t.string :destinos
      t.string :destinos_admin

      t.timestamps
    end
    add_index :st_estados, :orden
    add_index :st_estados, :st_estado
  end
end
