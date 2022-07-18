json.extract! appointment, :id, :first_name, :last_name, :email, :street_address, :city, :zip_code, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
