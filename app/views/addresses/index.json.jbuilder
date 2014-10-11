json.array!(@addresses) do |address|
  json.extract! address, :id, :line_one, :line_two, :city, :county, :postal_code, :state
  json.url address_url(address, format: :json)
end
