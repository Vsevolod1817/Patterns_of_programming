def min(x)
	min=x[0]
	for i in 0...x.size
		if(x[i] < min)
			min=x[i]
		end
	end
	return min
end

def polog(x)
	p=0
	for i in 0...x.size
		if(x[i]>0)
			p=i
			break
		end
	end
	return p
end





a = ARGV[1]
file = File.new(a,"r:UTF-8")
array = Array.new(file.readline.split.map(&:to_i))
print(array, "\n")
if(ARGV[0]=="1")
	print("Минимальный элемент массива: ", min(array),"\n")
elsif(ARGV[0]=="2")
	print("Адрес первого положительного элемента: ", polog(array), "\n")
else
	print("Введите 1 или 2", "\n")
end
