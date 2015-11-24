#require '../prct_08/Bibliografias'
class Libros < Bibliografias

    attr_accessor :editorial, :isbn

    def initialize(autores, titulo, publicacion, edicion, editorial, isbn)
        super(autores,titulo,publicacion,edicion)
        @editorial = editorial
        @isbn = isbn
    end

    def to_s
        print "Libro: \n"
        print "#{@autores}, #{@titulo}, #{@publicacion}, #{@edicion}, #{@editorial}, #{@isbn}\n"
    end

end