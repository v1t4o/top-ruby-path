def bubble_sort(array)
  elements = array.length

  # Precisamos de um loop que continue enquanto houver trocas
  loop do
    swapped = false

    # Percorremos o array até o penúltimo elemento
    (elements - 1).times do |i|
      # Comparamos o vizinho da esquerda com o da direita
      if array[i] > array[i + 1]
        # Troca de valores (Sintaxe elegante do Ruby)
        array[i], array[i + 1] = array[i + 1], array[i]
        
        # Se trocamos algo, o array ainda não estava pronto
        swapped = true
      end
    end

    # Se terminamos o "times" e swapped continuar false, o array está ordenado
    break unless swapped
  end

  array
end

# Testes
p bubble_sort([4,3,78,2,0,2]) # => [0, 2, 2, 3, 4, 78]
p bubble_sort([6, 5, 3, 1, 8, 7, 2, 4]) # => [1, 2, 3, 4, 5, 6, 7, 8]