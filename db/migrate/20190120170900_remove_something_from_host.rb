class RemoveSomethingFromHost < ActiveRecord::Migration[5.2]
  def change
    remove_column :hosts, :car_type, :string
    remove_column :hosts, :address, :string
    add_column :hosts, :babysiter_name, :string
  end
end
