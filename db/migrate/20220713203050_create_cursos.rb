class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :periodo
      t.string :titulo_grado
      t.string :institucion
      t.integer :pcd_id

      t.timestamps
    end
    add_index :cursos, :pcd_id
  end
end
