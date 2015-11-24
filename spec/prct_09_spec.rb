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
    
    
  end
    
end