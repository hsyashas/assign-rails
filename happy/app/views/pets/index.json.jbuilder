json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :animal, :breed, :age, :weight, :date_last
  json.url pet_url(pet, format: :json)
end
