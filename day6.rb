def sol1()
    source = File.open("day6.txt")
    content = source.readlines(chomp:true)[0].split(",").map(&:to_i)
    p content
end

sol1()