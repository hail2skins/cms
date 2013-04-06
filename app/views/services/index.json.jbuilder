json.array!(@services) do |service|
  json.extract! service, :name, :description, :cost, :business_id
  json.url service_url(service, format: :json)
end