json.array!(@notificacions) do |notificacion|
  json.extract! notificacion, :id, :notificacion_id, :usuario_id, :estado_not_id, :notificacio_titulo, :notificacion_texto
  json.url notificacion_url(notificacion, format: :json)
end
