json.array!(@estado_remates) do |estado_remate|
  json.extract! estado_remate, :id, :estado_subasta_id, :estado_subasta_nombre
  json.url estado_remate_url(estado_remate, format: :json)
end
