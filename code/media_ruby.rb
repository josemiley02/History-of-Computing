# Ruby: ejemplo clásico con manejo de arrays y métodos
puts "Introduzca la longitud:"
list_len = gets.to_i
if list_len > 0 && list_len < 100
  int_list = []
  sum = 0
  list_len.times do
    valor = gets.to_i
    int_list << valor
    sum += valor
  end
  average = sum / list_len
  result = int_list.count { |x| x > average }
  puts "Número de valores > media: #{result}"
else
  puts "Error: longitud no válida"
end
