def sol1()
    source = File.open("day3.txt")
    content = source.readlines(chomp:true).map(&:chars).transpose.map{
        |col|    
        (2*Float(col.map(&:to_i).sum)/Float(col.map(&:to_i).length) > 1) ? 1 : 0
    }.join
    # p content
    gamma = content.to_i(2)
    epsilon = (gamma^(("1"*content.length).to_i(2)))
    p "power consumption #{gamma * epsilon}"
    gamma.to_s(2)
end


def sol2helper(content)
    content.map(&:chars).transpose.map{
        |col|    
        (2*Float(col.map(&:to_i).sum)/Float(col.map(&:to_i).length) > 1) ? 1 : 0
    }.join

def sol2()
    # gamma = sol1()

    source = File.open("day3.txt")
    content = source.readlines(chomp:true)
    it = content.select{
        |x|
        sol2helper() 
    }