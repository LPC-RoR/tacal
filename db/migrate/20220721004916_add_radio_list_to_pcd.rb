class AddRadioListToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :vestuario, :string
    add_column :pcds, :aseo_personal, :string
    add_column :pcds, :alimentacion, :string
    add_column :pcds, :control_esfinter, :string
    add_column :pcds, :manejo_dinero, :string
    add_column :pcds, :movilidad, :string
    add_column :pcds, :uso_celular, :string
  end
end
