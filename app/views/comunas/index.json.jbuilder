json.array!(@comunas) do |comuna|
  json.extract! comuna, :id, :comuna_id, :provincia_id, :comuna_nombre
  json.url comuna_url(comuna, format: :json)
end
