json.array!(@owners) do |owner|
  json.extract! owner, :first_name, :last_name, :email, :password_digest
  json.url owner_url(owner, format: :json)
end