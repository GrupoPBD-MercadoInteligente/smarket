json.array!(@auditoria) do |auditorium|
  json.extract! auditorium, :id, :auditoria_id, :auditoria_usuario, :auditoria_tabla_mod, :auditoria_operacion, :auditoria_fecha, :auditoria_attr_mod, :auditoria_antes, :auditoria_despues
  json.url auditorium_url(auditorium, format: :json)
end
