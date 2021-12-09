def sol1()
    source = File.open("day5ex.txt")
    table = Array.new(1000){Array.new(1000){0}}
    p table
    content = source.readlines(chomp:true).map{
        |s|
        s.scan(/\d+/)
    }.select{
        |a|
        a[0] == a[2] or a[1] == a[3]
    }.each{
        |c|
        c = c.map(&:to_i)
        # is x same ?
        smol = (c[0] == c[2]) ? [1,[c[1],c[3]].map(&:to_i)] : [0,[c[0],c[2]].map(&:to_i)]
        coordrange = (smol[1].min..smol[1].max)
        # puts coordrange
        if (smol[0] == 1)
            # lookIntoMatrix = (table[c[0]][smol[1].min]..table[c[0]][smol[1].max])
            (table[c[0]][smol[1].min]..table[c[0]][smol[1].max]).map{
                |e|
                p e
                e + 1
            }
        else
            # lookIntoMatrix = (table[smol[1].min][c[0]]..table[smol[1].max][c[0]])
            (table[smol[1].min][c[0]]..table[smol[1].max][c[0]]).map{
                |e|
                e + 1
            }
        end
    }
    p table
    
end

sol1()


# ["403", "681", "403", "821"], ["146", "183", "23", "183"]