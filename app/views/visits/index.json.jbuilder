json.array!(@visits) do |visit|
  json.extract! visit, :visit_notes, :date_of_visit, :customer_id
  json.url visit_url(visit, format: :json)
end