json.array!(@estado_notificacions) do |estado_notificacion|
  json.extract! estado_notificacion, :id, :estado_not_id, :estado_not_nombre
  json.url estado_notificacion_url(estado_notificacion, format: :json)
end
