def sol1()
    source = File.open("day4.txt")
    content = source.readlines(chomp:true)
    drawnNumbers = content.shift.split(",").map(&:to_i)
    p drawnNumbers
    p content.map{
        |s|
        s.scan(/\d+/)
    }
    p content
    # bingoGrids = content.
end

sol1()