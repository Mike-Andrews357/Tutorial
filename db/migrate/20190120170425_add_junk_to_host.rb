class AddJunkToHost < ActiveRecord::Migration[5.2]
  def change
    add_column :hosts, :age, :integer
    add_column :hosts, :address, :string
    add_column :hosts, :street, :string
    add_column :hosts, :car_type, :string
  end
end
