class AddInteresesToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :interes_laboral_1, :string
    add_column :pcds, :interes_laboral_2, :string
    add_column :pcds, :interes_laboral_3, :string
    add_column :pcds, :nombre_referencia, :string
    add_column :pcds, :empresa_referencia, :string
    add_column :pcds, :telefono_referencia, :string
    add_column :pcds, :email_referencia, :string
  end
end
