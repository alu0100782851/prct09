#require '../prct_09/Bibliografias'
Nodo = Struct.new(:value, :siguiente, :previo)

class Lista
    
    attr_accessor :head, :tail, :contador
    
    #include Enumerable
    
    def initialize
        @head = nil     #inicio de la lista
        @tail = nil     #fin de la lista
        @contador=0     #variable que determina el tamaño actual de la lista
    end
    
end