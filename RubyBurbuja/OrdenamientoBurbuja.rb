#!/usr/bin/env ruby

# Aprendiendo ruby de mala manera.
# ================================
#
# Algoritmo de ordenamiento de burbuja
#
# Aclaración:
# Ruby es un lenguaje que tiene muchas ventajas, incluyendo metodos de
# ordenamiento, sin embargo, como una forma de irme familiarizando con el
# lenguaje haré algoritmos clásicos de ordenamiento.
#
# Si quieren conocer más detalles sobre este algoritmo, pueden consultar
# la wikipedia http://en.wikipedia.org/wiki/Bubble_sort
#
# a y b son arreglos idénticos.
#
# autor: Leonardo Zabala


a = [99,86,48,16,82,50,25,62,8,45]  #Será ordenado mediante bubble sort
b = [99,86,48,16,82,50,25,62,8,45]  #Al estilo Ruby

# Empezamos con el ordenamiento burbuja en el arreglo a.
# ------------------------------------------------------

# ¿Cuantos elementos tiene el arreglo?
n = a.count - 1

# count es un método, en este caso regresa 10 pero el indice del arreglo
# empieza en cero o sea, de cero a nueve, por eso le quito uno.

# Los índices en ruby comienzan en cero, por eso a[0] = 99 , a[1] = 86

begin
  intercambio = false
  i = 1
  while i <= n do
    if a[i-1] > a[i] # Si se cumple la condición, entonces intercambiamos.
      aux = a[i-1]
      a[i-1] = a[i]
      a[i] = aux
      intercambio = true
    end # if
    i +=1 # El equivalente a i = i + 1
  end #while i

end while intercambio == true # Este ciclo se ejecuta mientras haga intercambios.

# Llegó el momento de mostrar los resultados.

# Arreglo ordenado con bubble sort.
# join lo uso para mostrar el arreglo separado por comas.

puts "a = " << a.join(" , ")

# Ahora la forma ruby.
puts "b = " << b.sort.join(" , ")
