struct Node
    children::Dict{Char,Node}
    posi::Array{Int}
end

rootnode = Node(Dict(),[])
