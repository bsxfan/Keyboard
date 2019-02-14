module Keyboard

import Base.@locals

export keyboard


function keyboard(dict,file,line)
    println("keyboard at line ",line," in ",file)
    label = splitpath(file)[end] * "@$(line)" 
    while true
        print(label,"] > ")
        name = readline()
        if isempty(name)
            break
        end

        symbol = Meta.parse(name)
        if !haskey(dict,symbol)
            println("no local variable ",name)
            display(dict)
        else
            print(name,"=")
            display(dict[symbol])
        end
    end
end






function test_keyboard()

    koos = randn(2,3)
    sannie = 3
    keyboard(@locals,@__FILE__,@__LINE__)

    jack = 7
    keyboard(@locals,@__FILE__,@__LINE__)

end

end # module
