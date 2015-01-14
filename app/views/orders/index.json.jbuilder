json.array!(@orders) do |order|
  json.extract! order, :id, :product_id, :qty, :unit_price, :total, :status, :delivery_name, :delivery_address, :delivery_phone, :credit_card_number, :cvv
  json.url order_url(order, format: :json)
end
