class CreateProductGroups < ActiveRecord::Migration
  def change
    create_table :product_groups do |t|
      t.string :name
      t.string :product_type
      t.integer :product_category_id

      t.timestamps
    end
  end
end
