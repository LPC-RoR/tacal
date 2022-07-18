class AddDiscapacidadesToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :fisica, :boolean
    add_column :pcds, :sensorial_auditiva, :boolean
    add_column :pcds, :sensorial_visual, :boolean
    add_column :pcds, :psiquica, :boolean
    add_column :pcds, :intelectual, :boolean
  end
end
