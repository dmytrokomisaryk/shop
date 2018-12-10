class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :user
      t.string :name
      t.decimal :price, precision: 5, scale: 2
      t.integer :form

      t.timestamps
    end
  end
end
