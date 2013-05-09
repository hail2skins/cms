json.array!(@services) do |service|
  json.extract! service, :name, :description, :price, :business_id
  json.url service_url(service, format: :json)
end