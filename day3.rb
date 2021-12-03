def sol1()
    source = File.open("day3.txt")
    content = source.readlines(chomp:true).map(&:chars).transpose.map{
        |col|    
        (2*Float(col.map(&:to_i).sum)/Float(col.map(&:to_i).length) > 1) ? 1 : 0
    }.join
    # p content
    # p gamma = content.to_i(2)
    # p epsilon = (gamma^(("1"*content.length).to_i(2)))
    p gamma * epsilon
end

sol1()