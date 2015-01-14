json.array!(@admin_orders) do |admin_order|
  json.extract! admin_order, :id, :product_id, :qty, :unit_price, :total, :status, :delivery_name, :delivery_address, :delivery_phone, :credit_card_number, :cvv, :user_id
  json.url admin_order_url(admin_order, format: :json)
end
