class AddManejoComputacionalToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :manejo_computacional, :string
  end
end
