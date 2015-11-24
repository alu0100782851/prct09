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
    
    def insert_head(nodo)
        
        if empty == true            #Si la lista esta vacia insertamos el elemento en la lista vacia
            nodo.previo = @tail
            nodo.siguiente = @head
            @head = nodo
            @tail = nodo
        else                        #Si no esta vacia insertamos por el head 
            nodo.previo = @head
            nodo.siguiente = nil
            @head.siguiente = nodo
            @head = nodo
        end
        @contador = @contador + 1   #Aumentamos variable que indica tamaño de la lista 
        
    end
    
    def insert_tail(nodo)
        if empty                    #Si esta vacia insertamos en lista vacia
            insert_head(nodo)
        else                        #Si no insertamos por el tail
            nodo.siguiente = @tail
            nodo.previo = nil
            @tail.previo = nodo
            @tail = nodo
            @contador = @contador + 1
        end
    end
    
    def extract_head
        aux = @head
        @head = @head.previo
        
        if @head != nil             #Si head no es nil ponemos el siguiente de head como nil para desenlazar la lista
            @head.siguiente = nil
        else                        #Si el elemento que se extrae es el unico de la lista entonces ponemos todo a nil como en initialize
            @tail = nil
        end
        
        @contador = @contador - 1
        return aux.value
    end
    
    
    def extract_tail
        if @contador == 1
            return extract_head
        else    
            actual = @tail
            @tail = @tail.siguiente
		    
            if @tail != nil
                @tail.previo = nil
            end   
            @contador = @contador - 1
            return actual.value
        end
    end
end