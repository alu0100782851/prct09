require 'spec_helper'
require 'prct_09/Bibliografias'
require 'prct_09/Listas'
require 'prct_09/Revistas'
require 'prct_09/Libros'

describe Bibliografias do

  before :each do
    #referencias almacenadas como objetos de la clase Bibliografias
    @libro_1 = Bibliografias.new("Antoine Thomas, Andy Hunt, Chad Fowler","Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)","July 7, 2013","1")
    @libro_2 = Bibliografias.new("David Chelistamsky","Pro Git 2009th Edition. (Pro)","August 27, 2009","2")
    @libro_3 = Bibliografias.new("Dave Flanagan, Yukihiro Matsumoto","The Ruby Programming Language","February 4, 2008","3")
    @libro_4 = Bibliografias.new("Scott Chacon, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy","The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","December 25, 2010","4")
  end

    #Pruebas con la lista y con los nodos
  describe Lista do
  
    before :each do
      #Nodos que contienen las referencias para hacer las pruebas
      @nodo1 = Nodo.new(@libro_1)
      @nodo2 = Nodo.new(@libro_2)
      @nodo3 = Nodo.new(@libro_3)
      @nodo4 = Nodo.new(@libro_4)

      @lista = Lista.new
      
      @lista_1 = Lista.new
      @lista_1.insert_head(@nodo1)
      @lista_1.insert_head(@nodo2)
      @lista_1.insert_head(@nodo3)
      @lista_1.insert_head(@nodo4)
      
    end

    describe "Nodo" do
   
      it "#Debe existir un Nodo de la lista con sus datos y su siguiente" do
        expect(@nodo1.class).to eq(Nodo)
      end 
  
    end
    
    describe "Lista" do

      it "#Se extrae el primer elemento de la lista" do
        @lista.insert_head(@nodo1)
        expect(@lista.extract_head()).to eq(@nodo1.value)
      end
    
      it "#Se puede insertar un elemento" do
     	    @lista.insert_head(@nodo2)
     	    expect(@lista.head.value).to eq(@nodo2.value)
     end
    
      it "#Se pueden insertar varios elementos" do
        @lista.insert_head(@nodo3)
        @lista.insert_tail(@nodo4)
        @lista.insert_head(@nodo2)
      
        expect(@lista.extract_head()).to eq(@nodo2.value)
        expect(@lista.extract_tail()).to eq(@nodo4.value)
        expect(@lista.extract_head()).to eq(@nodo3.value)
      end
    
      it "#Debe existir una lista con su cabeza" do
        @lista.insert_head(@nodo2)
        expect(@lista.head.class).to eq(Nodo)
      end
      
      it "#Pruebas para utilizar el Mixin Enumerable - Funcion maximo" do
      	expect(@lista_1.max).to eq(@libro_4) 
      end
    
      it "#Pruebas para utilistazar el Mixin Enumerable - Funcion minimo" do
      	expect(@lista_1.min).to eq(@libro_1) 
      end   
      
      it "#Funcion sort: Devuelve las salida a la inversa segun la edicion" do
        p = @lista_1.sort{|a, b| b.edicion <=> a.edicion } #Ordena de menor a mayor
        expect(p).to eq([@libro_4,@libro_3,@libro_2,@libro_1])
      end
      
      it "#Funcion include" do
      	expect(@lista_1.include?@libro_1).to eq(true)
      	expect(@lista_1.include?@libro_2).to eq(true)
      	expect(@lista_1.include?@libro_3).to eq(true)
      	expect(@lista_1.include?@libro_4).to eq(true)
      end
      
      it "#Funcion each" do
      	expect(@lista_1.each{|lista|}).to eq(@lista_1.to_s)
      end
      
    end
  end
  
  describe Revistas do  #Pruebas con la clase hija revistas
  
    before :each do
      @revista = Revistas.new("Jacobson Martin","Isolation,Indentification and Synthesis of the Sex Attractant of Gypsy Moth","Oct. 14, 1960","first edition","vol. 132","n. 3433","Sciense")
    end
    
    it "#El objeto pertenece a la clase" do
      expect(@revista.class).to eq(Revistas)
    end
    
    it "#El objeto pertenece a la jerarquia" do
      expect(@revista.class.superclass).to eq(Bibliografias)
    end
    
    it "#El objeto pertenece a la clase Object" do
      @revista.is_a? Object
    end
    
     it "#El objeto pertenece a la clase BasicObject" do
      @revista.is_a? BasicObject
    end
    
  end
  
  describe Libros do  #Pruebas con la clase hija libros
  
    before :each do
      @libro = Libros.new("Richard E. Silverman","Git Pocket Guide","August 2, 2013","1","O’Reilly Media","1449325866, 978-1449325862")
    end
    
    it "#El objeto pertenece a la clase" do
      @libro.class == Libros
    end
    
    it "#El objeto pertenece a la jerarquia" do
      expect(@libro.class.superclass).to eq(Bibliografias)
    end
    
     it "#El objeto pertenece a la clase Object" do
      @libro.is_a? Object
    end
    
     it "#El objeto pertenece a la clase BasicObject" do
      @libro.is_a? BasicObject
    end
    
  end
    
  describe "#Comparación de las referencias utilistazando el Comparable" do
    
    it "#La referencia 1 es menor que la referencia 2" do
      expect(@libro_1.autores[0] < @libro_2.autores[0]).to eq(true)
      expect(@libro_3.autores[0] < @libro_1.autores[0]).to eq(false)
      expect(@libro_3.autores[0] < @libro_4.autores[0]).to eq(true)
      expect(@libro_4.autores[0] < @libro_1.autores[0]).to eq(false)
      expect(@libro_4.autores[0] < @libro_2.autores[0]).to eq(false)
    end 
    
    it "#La referencia 1 es mayor que la referencia 2" do
      expect(@libro_1.autores[0] > @libro_2.autores[0]).to eq(false)
      expect(@libro_3.autores[0] > @libro_1.autores[0]).to eq(true)
      expect(@libro_3.autores[0] > @libro_4.autores[0]).to eq(false)
      expect(@libro_4.autores[0] > @libro_1.autores[0]).to eq(true)
      expect(@libro_4.autores[0] > @libro_2.autores[0]).to eq(true)
    end
    
    it "#La referencia 1 es igual que la referencia 2" do
      expect(@libro_1.autores[0] == @libro_2.autores[0]).to eq(false)
    end
    	
    it "#La referencia 1 es menor igual que la referencia 2" do
      expect(@libro_1.autores[0] <= @libro_2.autores[0]).to eq(true)
    end
    	
    it "#La referencia 1 es mayor igual que la referencia 2" do
      expect(@libro_1.autores[0] >= @libro_2.autores[0]).to eq(false)
    end
    
  end
    
end