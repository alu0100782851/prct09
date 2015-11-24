###**Lenguajes y Paradigmas de la Programación. Práctica 9**
*Autor: Moisés Yanes Carballo*


####**Introducción**
En esta practica se ha llevado a cabo el desarrollo de una jerarquía de clases en ruby para representar referencias bibliográficas. Además de esto se ha desarrollado una lista doblemente enlazada en la cual cada nodo almacena una referencia.

Por otro lado, se ha añadido el módulo comparable en la clase que representa las referencias para realizar comparaciones entre diferentes referencias bibliográficas y el módulo enumerable dentro de la clase lista para hacer pruebas con la misma.

Finalmente se ha creado el fichero travis.yml y se ha relacionado nuestro repositorio github con travis para comprobar la portabilidad de los desarrollos entre distintas plataformas y versiones de Ruby.

####**Documentación**
Para llevar a cabo la practica han sido necesarios los ficheros que se especifican a continuación, así como la funcionalidad de cada uno.


1. **.gitignore** : Contiene todas las extensiones de los ficheros que no queremos se añadan a nuestro repositorio git.

2. **Readme.md** : Contiene una explicación detallada de la práctica. 

3. **Bibliografias.rb** : Contiene el código de la clase en Ruby que permite representar referencias de una bibliografía. También contiene el modulo comparable y las funciones necesarias para poder comparar referencias.

4. **Listas.rb** : Contiene el código de la clase en Ruby que permite trabajar con una lista doblemente enlazada, así como la struct que implementa los nodos de la lista. Ademas en ella se ha incluido el modulo enumerable.

5. **Revistas.rb** : Clase hija de Bibliografias que representa una referencia de una revista.

6. **Libros.rb** : Clase hija de Bibliografias que representa una referencia de un libro.

7. **prct_07_spec.rb** : Contiene el código con las expectativas necesarias para comprobar el correcto funcionamiento del código implementando, así como las pruebas necesarias para la comprobación de los módulos enumerable y comparable.  

8. **Rakefile** : Contiene las sentencias necesarias para llevar a cabo las TDD.

####**Desarrollo**
Para comenzar el desarrollo de la practica se ha partido de la gema creada en la practica anterior, por lo que no ha sido necesario volver a crearla.

La estructura de directorios por tanto es la siguiente:

![enter image description here](https://i.gyazo.com/db33635d515f32864f90a07fe7e28bc6.png)

El siguiente paso ha sido comenzar con el desarrollo de las TDD, para ello dentro del fichero 'prct_09_spec.rb' hemos añadido cada una de las pruebas necesarias para poder desarrollar nuestra clase en base a dichas pruebas. 
A continuación, con los ficheros de las clases y de la lista doblemente enlazada ya desarrollados, se han implementado las pruebas para comprobar el correcto funcionamiento de los modulos enumerable y comparable.

Algunas de las pruebas realizadas para los modulos han sido las siguientes:
> - Comprobación de que una referencia es mayor, menor o igual que otra
> - Comprobación de que una referencia es <= ó >= que otra.
> - Comprobación de funciones del modulo enumerable con la lista

Con el fichero de las pruebas y los de las clases terminados se ha creado el fichero .travis.yml al cual hemos añadido las siguientes lineas:
>**.travis.yml:**
>language: ruby
>rvm:
>- 2.2.0
>- 1.9.3
>- jruby-19mode # JRuby in 1.9 mode
>- rbx-19mode

Una ves hecho esto para comprobar el correcto funcionamiento de el listado de plataformas anteriores, ha sido necesario, además de crear el fichero anterior, darnos de alta en https://travis-ci.org/.

Posteriormente dento de la pagina de travis y estando ya loggeados, hemos accedido a nuestro repositorio git y lo hemos activado. Por ultimo dentro de las configuraciones que proporciona travis para nuestro repositorio hemos activado las siguientes opciones: **Build only if .travis.yml is present**, **Build pushes** y **Build pull requests**
	


----
####**Guion**
 1.Considere la jerarquıa de clases Ruby para representar referencias bibliograficas de practicas anteriores. 
Modifıquela de manera que las instancias sean comparables. 
Utilizar la metodología de desarrollo dirigido por pruebas (Test Driven Development - TDD) y la herramienta RSpec.

 2.Considere la clase Ruby para representar y gestionar listas doblemente enlazadas de practicas anteriores. 
 Modifíquela de manera que las instancias sean enumerables. 
 Utilizar la metodología de desarrollo dirigido por pruebas (Test Driven Development - TDD) y la herramienta RSpec.


3.Comprobar con la herramienta Travis de Integraci´on Continua. el codigo Ruby desarrollado. Con ella se comprueba la portabilidad de los desarrollos entre distintas plataformas y versiones de Ruby.

- Darse de alta en https://travis-ci.org/ y permitir que se acceda desde Github (poniendo a ON el proyecto).
- Crear un fichero .travis.yml que contenga el listado de plataformas sobre las que se quiere comprobar el correcto funcionamiento, por ejemplo: 

 language: ruby
 rvm:
 - 2.2.0
 - 1.9.3
 - jruby-19mode # JRuby in 1.9 mode
 - rbx-19mode

Para trabajar con Travis el repositorio debe estar en Github. Crear un ‘repositorio’ en Github.

4.Escribir la direccion http del repositorio que se ha creado en Github en la tarea habilitada en el Campus Virtual.