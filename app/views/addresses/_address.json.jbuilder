json.extract! address, :id, :line_1, :line_2, :city, :state, :zip, :created_at, :updated_at
json.url address_url(address, format: :json)