json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nit, :razon_social, :gerente, :direccion, :email, :telefono, :fh_creacion, :nro_trabajadores, :municipio_id
  json.url empresa_url(empresa, format: :json)
end
