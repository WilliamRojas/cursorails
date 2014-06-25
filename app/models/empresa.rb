class Empresa < ActiveRecord::Base

validates :nit, format: { with: /(\d{8})+-(\d{1})/, message: 'Formato no valido' }
# Validar que los atributos sean obligatorios
validates :razon_social, :presence => true
validates :gerente, :presence => true
validates :direccion, :presence => true
validates :email, :presence => true
validates :telefono, :presence => true
validates :nro_trabajadores, :presence => true
# validar formato de un email
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
message: 'Formato no valido' }
# valida la longitud de un campo, tanto la longitud minima como la maxima
validates :nit, length: { minimum: 1, maximum: 10 }
validates :nro_trabajadores, length: { minimum: 1, maximum: 2 }
# Valida si un atributo es numerico
validates :telefono, numericality: true
	
  belongs_to :municipio

  def self.search(search, page)
		where(['upper(razon_social) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("razon_social")
	end
end
