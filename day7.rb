def sol1()
    source = File.open("day7.txt")
    content = source.readlines(chomp:true)[0].split(",").map(&:to_i).sort
    # moy = Float(content.sum) / Float(content.length)
    median = content[(content.length/2)-1] 
    # p content[500]
    # p moy.round
    distance = content.map{
            |i|
            (i - median).abs
    }.sum

    p distance
end

def sol2()
    source = File.open("day7.txt")
    content = source.readlines(chomp:true)[0].split(",").map(&:to_i).sort
    moy = Float(content.sum) / Float(content.length)
    p moy
    distance1 = content.map{
            |i|
            moy = moy.round - 1
            # 0.5 * (((i - moy.round).abs)*((0..(i + moy.round)).size))
            ((moy - i)**2 + (moy - i).abs) * 0.5
    }.sum
    p distance1

    distance2 = content.map{
        |i|
        moy = moy.round
        # 0.5 * (((i - moy.round).abs)*((0..(i + moy.round)).size))
        ((moy - i)**2 + (moy - i).abs) * 0.5
    }.sum
    p distance2

    distance3 = content.map{
        |i|
        moy = moy.round + 1
        # 0.5 * (((i - moy.round).abs)*((0..(i + moy.round)).size))
        ((moy - i)**2 + (moy - i).abs) * 0.5
    }.sum
    p distance3
    # distance = Float(distance.sum) / distance.length
    # p content
    p [distance1,distance2,distance3].min
end

sol1()
sol2()