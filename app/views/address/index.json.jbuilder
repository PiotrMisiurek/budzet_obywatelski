json.array!(@addresses) do |address|
  json.extract! address, :id, :first_name, :second_name, :last_name, :city, :address_line_1, :address_line_2, :city, :zip_code, :id_number, :personal_number
  json.url address_url(address, format: :json)
end
