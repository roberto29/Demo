json.array!(@envio_correos) do |envio_correo|
  json.extract! envio_correo, :id
  json.url envio_correo_url(envio_correo, format: :json)
end
