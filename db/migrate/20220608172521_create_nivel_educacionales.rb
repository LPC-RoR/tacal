class CreateNivelEducacionales < ActiveRecord::Migration[5.2]
  def change
    create_table :nivel_educacionales do |t|
      t.string :nivel_educacional

      t.timestamps
    end
    add_index :nivel_educacionales, :nivel_educacional
  end
end
