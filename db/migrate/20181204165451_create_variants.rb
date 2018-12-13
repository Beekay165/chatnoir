class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
      t.string :name, null:false
      t.text :option
      t.decimal :price, precision: 10, scale: 2, null:false
      t.integer :stock, null:false
      t.string :image
      t.string :sku

      t.timestamps
    end
  end
end
