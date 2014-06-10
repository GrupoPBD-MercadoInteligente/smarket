json.array!(@propiedadclases) do |propiedadclase|
  json.extract! propiedadclase, :id, :propiedad_id, :clase_id
  json.url propiedadclase_url(propiedadclase, format: :json)
end
