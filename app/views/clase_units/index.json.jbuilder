json.array!(@clase_units) do |clase_unit|
  json.extract! clase_unit, :id, :clase_id, :cla_clase_id, :clase_nombre
  json.url clase_unit_url(clase_unit, format: :json)
end
