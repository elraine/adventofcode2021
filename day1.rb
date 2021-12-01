def sol1()
    @count = 0

    source = File.open("day1.txt")
    content = source.readlines.map(&:to_i)
    content.each_cons(2){
        |el,nel|
        if (nil == nel)
            return
        end
        if (el < nel)
            @count +=1
        end
    }
    puts "day1 sol1 #{@count}"
end

def sol2()
    @count = 0

    source = File.open("day1.txt")
    content = source.readlines.map(&:to_i)
    content.each_cons(4){
        |el,nel,nnel,nnnel|
        if (nil == nnnel)
            return
        end
        if ([el,nel,nnel].sum < [nel,nnel,nnnel].sum)
            @count +=1
        end
    }
    puts "day1 sol2 #{@count}"
end

sol1()
sol2()