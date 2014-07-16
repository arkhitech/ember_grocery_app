class CreatePromos < ActiveRecord::Migration
  def change
    create_table :promos do |t|
      t.text :promo_type
      t.datetime :end_date
      t.integer :stock_id

      t.timestamps
    end
  end
end
