class CreateDispositivoAtenciones < ActiveRecord::Migration[5.2]
  def change
    create_table :dispositivo_atenciones do |t|
      t.string :dispositivo_atencion
      t.string :lugar_atencion
      t.string :profesional
      t.string :frecuencia_control
      t.boolean :tratamiento
      t.integer :pcd_id

      t.timestamps
    end
    add_index :dispositivo_atenciones, :pcd_id
  end
end
