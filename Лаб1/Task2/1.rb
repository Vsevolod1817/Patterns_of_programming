def prost(x)
	count=0
	for i in 1..x
		if(x%i==0)
			count+=1
		end
	end
	if(count>2)
		return 0
	elsif (count==2)
		return 1
	end
end

def max(x)
	max=0
	if(max<x)
		max=x
	end
	return max
end


def del(x)
	for i in 1..x
		if(x%i==0 && prost(i)==1)
			x1=max(i)
		end
	end
	return x1
end

a = ARGV[0]

print("Max simple devider of digit is = ",del(a.to_i),"\n")
