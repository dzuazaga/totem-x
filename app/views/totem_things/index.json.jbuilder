json.array!(@totem_things) do |totem_thing|
  json.extract! totem_thing, :id, :code, :name
  json.url totem_thing_url(totem_thing, format: :json)
end
