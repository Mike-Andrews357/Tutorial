class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.string :title
      t.text :body
      t.integer :age
      t.string :babysitter

      t.timestamps
    end
  end
end
