json.array!(@gift_certs) do |gift_cert|
  json.extract! gift_cert, :name, :number, :value, :description, :customer_id, :redeemed, :date_redeemed
  json.url gift_cert_url(gift_cert, format: :json)
end