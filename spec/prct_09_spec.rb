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

end