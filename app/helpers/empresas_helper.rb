module EmpresasHelper
	def tamano_empresa(n)
   	   if n <= 10
   	   	  "Pequeña"
   	   elsif n > 10 and n <= 50
   	   	  "Mediana"
   	   elsif n > 50
   	   	  "Grande"
       else
       	  "Falta la cantidad de trabajadores"
   	   end
   end
end
