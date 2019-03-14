class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :client
      t.timestamps null: false
    end
  end
end
