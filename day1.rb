def sol1()
    source = File.open("day1.txt")
    content = source.readlines.map(&:to_i).each_cons(2).count{
        |tuple|
        (tuple[0] < tuple[1])
    }
    puts "day1 sol1 #{content}"
end


def sol2()
    source = File.open("day1.txt")
    content = source.readlines.map(&:to_i).each_cons(4).count{
        |tuple|
        (tuple[0..2].sum < tuple[1..3].sum)
    }
    puts "day1 sol2 #{content}"
end

sol1()
sol2()