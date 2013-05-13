json.array!(@businesses) do |business|
  json.extract! business, :name, :description, :user_id
  json.url business_url(business, format: :json)
end