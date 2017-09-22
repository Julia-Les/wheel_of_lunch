json.extract! restaurant, :id, :name, :address, :website, :phone, :category, :price_range, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
