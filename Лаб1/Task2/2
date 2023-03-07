def composition(x)
	k=1
	for i in 1..x
		if((x%10)%5!=0)
			k*=(x%10)
		end
		x=x/10
	end
	return k
end

a = ARGV[0]
print("Composition = ", composition(a.to_i), "\n")
