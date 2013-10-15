massive = [621, 448, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 12, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 572, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 300]
#узнать количество элементов в массиве 
puts massive.count
#перевернуть массив 
puts massive.reverse.to_s
#найти наибольшее число 
puts massive.max
#найти наименьшее число 
puts massive.min
#найти среднее арифметическое 
count = massive.count
sum_mas = massive.inject(0){|result, elem| result +elem}
puts sum_mas/count
#отсортировать от меньшего к большему 
puts massive.sort.to_s
#отсортировать от большего к меньшему 
puts massive.sort.reverse.to_s
#удалить все нечетные числа 
puts massive.find_all{ |elem| elem.even? }.to_s
#оставить только те числа, которые без остатка делятся на 3  
puts massive.find_all{ |elem| elem % 3 == 0 }.to_s
#удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов) 
puts massive.uniq.to_s
#разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого 
puts massive.map{ |element| element/10.to_f}.to_s
#получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве 
#massive_lett = []
#massive.each do |elem|
#   if elem < 26
#      massive_lett.push(elem.chr)
#   end
#end
#puts massive_lett.to_s
#поменять местами минимальный и максимальный элементы массива 
massive_chng = []
massive.each do |elem|
if elem == massive.max
   massive_chng.push(massive.min)
elsif elem == massive.min
   massive_chng.push(massive.max)
else
   massive_chng.push(elem)
end
end
puts massive_chng.to_s
#найти элементы, которые находятся перед минимальным числом в массиве 
i = massive.index(massive.min)
puts massive[0..i].to_s 
#необходимо найти три наименьших элемента 
puts massive.sort.uniq[0..2].to_s  
