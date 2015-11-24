class Bibliografias

    attr_accessor :autores , :titulo , :publicacion, :edicion #geters y serters 

    include Comparable
    
    def initialize(autores, titulo, publicacion, edicion)
        @autores = autores
        @titulo = titulo
        @publicacion = publicacion
        @edicion = edicion
    end
    
    def <=>(other)
	
		return nil unless other.is_a?Bibliografias  #Devuelve nil si se cumple que other no es un objeto de tipo bibliografia
		
		@autores  <=> other.autores

    end
	
	def ==(other)
		
		if other.is_a?Bibliografias
            @titulo == other.titulo && @autores == other.autores && @publicacion == other.publicacion &&  @edicion == other.edicion
		else
		    false
		end

	end
    
end