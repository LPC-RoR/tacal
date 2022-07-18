class AddRedesToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :facebook, :string
    add_column :pcds, :instagram, :string
  end
end
