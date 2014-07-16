json.array!(@promos) do |promo|
  json.extract! promo, :id, :promo_type, :end_date, :stock_id
  json.url promo_url(promo, format: :json)
end
