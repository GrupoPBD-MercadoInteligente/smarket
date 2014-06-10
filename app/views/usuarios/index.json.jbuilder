json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usuario_id, :comuna_id, :usuario_nombre, :usuario_apellidopat, :usuario_apellidomat, :usuario_rut, :usuario_e_mail, :usuario_nombre_usuario, :usuario_contrasena, :usuario_vip, :usuario_calle, :usuario_numero_calle, :usuario_villa, :usuario_numero_depto, :usuario_bloque
  json.url usuario_url(usuario, format: :json)
end
