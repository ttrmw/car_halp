json.extract! car, :id, :model_id, :url, :site, :price, :available, :created_at, :updated_at
json.url car_url(car, format: :json)