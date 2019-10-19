class CreatePropertys < ActiveRecord::Migration[5.0]
  def change
    create_table :propertys do |t|
      t.string :property_name
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :remarks
    end
  end
end
