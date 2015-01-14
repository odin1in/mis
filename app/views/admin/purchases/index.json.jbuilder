json.array!(@admin_purchases) do |admin_purchase|
  json.extract! admin_purchase, :id, :supplier_id, :product_id, :cpu, :qty, :total, :deliver_at, :status
  json.url admin_purchase_url(admin_purchase, format: :json)
end
