json.array!(@admin_warehouses) do |admin_warehouse|
  json.extract! admin_warehouse, :id, :name, :address
  json.url admin_warehouse_url(admin_warehouse, format: :json)
end
