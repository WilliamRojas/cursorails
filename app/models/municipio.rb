class Municipio < ActiveRecord::Base

	def self.search(search, page)
		where(['upper(nombre) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("nombre")
	end
	
end
