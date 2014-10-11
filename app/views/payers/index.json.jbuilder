json.array!(@payers) do |payer|
  json.extract! payer, :id, :name, :tax_id
  json.url payer_url(payer, format: :json)
end
