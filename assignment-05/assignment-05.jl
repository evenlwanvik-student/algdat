function parse_string(str_in)
    arr_out = Array{Tuple{String, Int}, 1}() # initializ an array of tuples
    str_len = length(str_in)
    first_idx = 0 # keep track of the first index of the words
    tuple_idx = 1
    for i = 1:str_len # loop over every symbol in string
        if (first_idx < 1) # first_idx is reset to 0 after we've found a space
            first_idx = i
        end
        if (str_in[i] == ' ')
            push!(arr_out, (string(str_in[first_idx:i]),first_idx))
            first_idx = 0
            tuple_idx = tuple_idx + 1
            continue
        elseif i == str_len
            push!(arr_out, (string(str_in[first_idx:(i)]),first_idx))
        end
    end
    return arr_out
end

#struct Node
#    children::Dict{Char,Node}
#    posi::Array{Int}
#end

function build(list)
    toppNode = Node(Dict(),[])
    for (string, position) in list
        node = toppNode
        for char in string
            if !haskey(node.children, char)
                node.children[char] = Node(Dict(),[])
            end
            node = node.children[char]
        end
        push!(node.posi, position)
    end
    return toppNode
end

function positions(word, node, idx=1)
    if (idx > length(word))
        position = node.posi
    elseif (word[idx] == '?')
        position = []
        for key in collect(keys(node.children))
            append!(position, positions(word, node.children[key], idx + 1))
        end
    elseif (haskey(node.children, word[idx]))
        position = positions(word, node.children[word[idx]], idx + 1)
    else
        position = []
    end
    return position
end
