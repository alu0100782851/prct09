class Bibliografias

    attr_accessor :autores , :titulo , :publicacion, :edicion #geters y serters 

    #include Comparable
    
    def initialize(autores, titulo, publicacion, edicion)
        @autores = autores
        @titulo = titulo
        @publicacion = publicacion
        @edicion = edicion
    end
    
end