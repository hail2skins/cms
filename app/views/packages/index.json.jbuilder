json.array!(@packages) do |package|
  json.extract! package, :name, :description, :count, :date_purchased, :date_completed
  json.url package_url(package, format: :json)
end