json.extract! model, :id, :name, :manufactured_from, :manufactured_until, :engine_size, :doors, :trim, :body, :fuel, :created_at, :updated_at
json.url model_url(model, format: :json)