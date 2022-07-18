class CreateEtnias < ActiveRecord::Migration[5.2]
  def change
    create_table :etnias do |t|
      t.string :etnia

      t.timestamps
    end
    add_index :etnias, :etnia
  end
end
