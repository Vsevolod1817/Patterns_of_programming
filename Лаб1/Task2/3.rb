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
		if(x%i==0 && prost(i)==0 && i%2!=0)
			x1=max(i)
		end
	end
	return x1
end

def composition(x)
	k=1
	for i in 1..x
			k*=(x%10)
		end
		x=x/10
	return k
end

a = ARGV[0]

b = del(a.to_i)
c = composition(a.to_i)
d = b.gcd(c)
print("NOD of max not simple odd devider of number and composition of its digits is = ",d,"\n")
