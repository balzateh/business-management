class CreateSaleProducts < ActiveRecord::Migration
  def change
    create_table :sale_products do |t|
      t.references :sale
      t.references :product
      t.timestamps null: false
    end
  end
end
