class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :parent_id
      t.text :name
      t.text :additional_text
      t.decimal :normal_price
      t.string :store_name
      t.integer :product_group_id
      t.string :status
      t.integer :brand_id
      t.string :packaging
      t.integer :units_of_item
      t.string :size
      t.string :halal_status
      t.string :halal_certification_issuer
      t.string :preservatives_status
      t.string :artificial_coloring_status
      t.string :artificial_flavoring_status
      t.string :food_conditioner_status
      t.string :artifical_sweetener_status
      t.boolean :returnable
      t.string :product_note
      t.string :internal_note
      t.string :product_price_group
      t.string :creator
      t.string :picture

      t.timestamps
    end
  end
end
