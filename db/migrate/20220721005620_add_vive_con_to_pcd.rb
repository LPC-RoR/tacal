class AddViveConToPcd < ActiveRecord::Migration[5.2]
  def change
    add_column :pcds, :vive_con, :string
    add_column :pcds, :vive_con_otro, :string
  end
end
