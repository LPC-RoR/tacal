class CreateNacionalidades < ActiveRecord::Migration[5.2]
  def change
    create_table :nacionalidades do |t|
      t.string :nacionalidad

      t.timestamps
    end
    add_index :nacionalidades, :nacionalidad
  end
end
