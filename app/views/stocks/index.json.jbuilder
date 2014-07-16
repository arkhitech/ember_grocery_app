json.array!(@stocks) do |stock|
  json.extract! stock, :id, :parent_id, :name, :additional_text, :normal_price, :store_name, :product_group_id, :status, :brand_id, :packaging, :units_of_item, :size, :halal_status, :halal_certification_issuer, :preservatives_status, :artificial_coloring_status, :artificial_flavoring_status, :food_conditioner_status, :artifical_sweetener_status, :returnable, :product_note, :internal_note, :product_price_group, :creator, :picture
  json.url stock_url(stock, format: :json)
end
