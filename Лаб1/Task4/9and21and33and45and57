def lastmin(x)
	x[0...x.rindex(x.min)]
end

def max(x)
	x[(x.index(x.max)+1)..-1]
end

def polog(x)
	x.each_cons(2).all? { |a,b| a * b < 0}
end

def sum(x,a,b)
	x.reduce(0) {
		|s,x|
		if x>=a && x<=b then
			s+x
		else
			s
		end
	}
end

def count(x)
	k=0
	x.reduce(0) { |s,x| k+=1 if x > s; s+x}
	k
end

a = ARGV[0]
file = File.new(a,"r:UTF-8")
array = Array.new(file.readline.split.map(&:to_i))
print("Array: ", array, "\n")
print("Please select a task: ", "\n")
print("1) Найти элементы, расположенные перед последним минимальным", "\n")
print("2) Найти элементы, расположенные после первого максимального", "\n")
print("3) Проверить, чередуются ли в массиве положительные и отрицательные числа", "\n")
print("4) Введите интервал. Найти сумму элементов, значение которых попадает в данный интервал", "\n")
print("5) Найти кол-во таких элементов, которые больше чем сумма всех предыдущих", "\n")
b = STDIN.gets.chomp.to_i
if(b==1)
	print(lastmin(array), "\n")
end
if (b==2)
	print(max(array), "\n")
end
if (b==3)
	print(polog(array), "\n")
end
if(b==4)
	print("Введите первую границу: ")
	c=STDIN.gets.chomp.to_i
	print("Введите вторую границу: ")
	d=STDIN.gets.chomp.to_i
	print("Результат: ",sum(array,c,d), "\n")
end
if (b==5)
	print(count(array), "\n")
end
if (b>5 || b<1)
	print("Please input a correct data","\n")
end
