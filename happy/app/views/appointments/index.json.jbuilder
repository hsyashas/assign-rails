json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :pet_id, :doctor_id, :customer, :date_of_visit, :reminder, :reason
  json.url appointment_url(appointment, format: :json)
end
