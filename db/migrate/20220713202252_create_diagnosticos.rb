class CreateDiagnosticos < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnosticos do |t|
      t.string :diagnostico
      t.string :secuela
      t.boolean :hospitalizacion
      t.date :ultima_crisis
      t.integer :pcd_id

      t.timestamps
    end
    add_index :diagnosticos, :diagnostico
    add_index :diagnosticos, :pcd_id
  end
end
