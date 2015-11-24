#require '../prct_08/Bibliografias'
class Revistas < Bibliografias
    
    attr_accessor :volumen, :fasciculo, :t_articulo
    
    def initialize(autores, titulo, publicacion, edicion, volumen, fasciculo, t_articulo)
        super(autores,titulo,publicacion,edicion)
        @publicacion = publicacion
        @volumen = volumen
        @fasciculo = fasciculo
        @t_articulo = t_articulo
    end
    
    def to_s
        print "Revista: \n"
        print "#{@autores}, #{@titulo}, #{@publicacion}, #{@edicion}, #{@volumen}, #{@fasciculo}, #{@t_articulo}\n"
    end
    
end