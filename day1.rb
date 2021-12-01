def sol1()
    count = 0
    source = File.open("day1.txt")
    content = source.readlines.map(&:to_i).each_cons(2){
        |tuple|
        (tuple[0] < tuple[1]) ? count +=1 : count
    }
    puts "day1 sol1 #{count}"
end


def sol2()
    count = 0
    source = File.open("day1.txt")
    content = source.readlines.map(&:to_i).each_cons(4){
        |tuple|
        (tuple[0..2].sum < tuple[1..3].sum) ? count += 1 : count
    }
    puts "day1 sol2 #{count}"
end

sol1()
sol2()