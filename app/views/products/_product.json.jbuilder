json.extract! product, :id, :Name, :Description, :PointsToRedeem, :Enabled, :created_at, :updated_at
json.url product_url(product, format: :json)
