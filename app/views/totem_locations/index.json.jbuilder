json.array!(@totem_locations) do |totem_location|
  json.extract! totem_location, :id, :code, :name, :location, :description
  json.url totem_location_url(totem_location, format: :json)
end
