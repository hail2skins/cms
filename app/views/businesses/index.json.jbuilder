json.array!(@businesses) do |business|
  json.extract! business, :name, :street_address, :additional, :city, :state, :zip_code, :description, :user_id
  json.url business_url(business, format: :json)
end