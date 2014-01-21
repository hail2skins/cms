json.array!(@phones) do |phone|
  json.extract! phone, :number
  json.url phone_url(phone, format: :json)
end