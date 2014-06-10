json.array!(@provincia_units) do |provincia_unit|
  json.extract! provincia_unit, :id, :provincia_id, :region_id, :provincia_nombre
  json.url provincia_unit_url(provincia_unit, format: :json)
end
