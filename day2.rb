def sol1()

    x = 0
    z = 0
    source = File.open("day2.txt")
    content = source.readlines.map{
        |s|
        line = s.split(' ')
        kw = line.first
        val = line[1].to_i
        if (kw == "forward")
            x += val
        elsif (kw == "down")
            z += val
        elsif (kw == "up")
            z -= val
        else
            return "error #{line}"
        end
    }
    puts "day2 sol1 #{x * z}"
end

def sol1alt()
    source = File.open("day2.txt")
    content = source.readlines.map(&:split).group_by{
        |input| 
        input.first
    }.map{ 
        |a|
        arrDirection = a[1].transpose
        [arrDirection.flatten.first,arrDirection[1].map(&:to_i).sum]
    }.to_h
    # puts content
    puts "day2 sol1alt #{content['forward'] * (content['down'] - content['up'])}"
end

def sol2()
    x = 0
    z = 0
    aim = 0
    source = File.open("day2.txt")
    content = source.readlines.map{
        |s|
        line = s.split(' ')
        kw = line.first
        val = line[1].to_i
        if (kw == "forward")
            x += val
            z += (val * aim)
        elsif (kw == "down")
            aim += val
        elsif (kw == "up")
            aim -= val
        else
            return "error #{line}"
        end
    }
    puts "day2 sol2 #{x * z}"
end

def sol2alt()
    x = 0
    z = 0
    aim = 0
    source = File.open("day2.txt")
    content = source.readlines.map{
        |s|
        line = s.split(' ')
        kw = line.first
        val = line[1].to_i
        if (kw == "forward")
            x += val
            z += (val * aim)
        else
            aim += ((kw.length <=> "aww".length) * val)
        end
    }
    puts "day2 sol2alt #{x * z}"
end

# sol1()
# sol2()
sol1alt()
sol2alt()
