using DataStructures

#mutable struct Node
#    ip::Int
#    neighbours::Array{Tuple{Node,Int}}
#    risk::Union{Float64, Nothing}
#    predecessor::Union{Node, Nothing}
#    probability::Float64
#    Node() = (obj = new(0);)
#end

function create_network()
    nodes = []
    for i = 1:4
        push!(nodes, Node() )
        nodes[i].ip = i
    end

    nodes[1].probability = 1.0
    nodes[1].risk = 0
    nodes[1].neighbours = [(nodes[2], 6), (nodes[3], 3)]

    nodes[2].probability = 0.5
    nodes[2].risk = 12
    nodes[2].neighbours = [(nodes[4], 3)]

    nodes[3].probability = 0.75
    nodes[3].risk = 4
    nodes[3].neighbours = [(nodes[4], 4)]

    nodes[4].probability = 0.8
    nodes[4].risk = 9

    return nodes
end

function initialize_single_source!(graph, start)
    for v in graph
        v.risk = typemax(Float64)
        v.predecessor = nothing
    end
    start.risk = 0
end

function relax!(from_node,to_node,cost)
    tot_risk = from_node.risk + (cost/to_node.probability)
    if (tot_risk < to_node.risk)
        to_node.risk = tot_risk
        to_node.predecessor = from_node
    end
end

function extract_min(list)
    min = typemax(Float64)
    ret_node = list[1]
    delete_idx = 1
    for i = 1:length(list)
        if list[i].risk < min
            ret_node = list[i]
            delete_idx = i
        end
    end
    deleteat!(list, delete_idx)
    return ret_node
end

function dijkstra!(graph,start)
    initialize_single_source!(graph, start)
    pq = PriorityQueue()                  # create a priority que
    enqueue!(pq, start, start.risk)
    while !isempty(pq)
        from_node = dequeue!(pq)
        for to_node in from_node.neighbours
            relax!(from_node, to_node[1], to_node[2])
            for node in pq # check if node already exists in que
                if node[1] == to_node[1] # if so change it
                    pq[to_node[1]] = to_node[1].risk # priority changed to new risk
                end
                println(node[to_node[1]])
            end
            enqueue!(pq, to_node[1], to_node[1].risk)
        end
    end
end

test = PriorityQueue()
network = create_network()
enqueue!(test, network[1].neighbours[1], network[1].neighbours[1][1].risk)
enqueue!(test, network[1].neighbours[2], network[1].neighbours[2][1].risk)

for i in test
    println(i[1])
    if i[1] == network[1].neighbours[2]
        #println(i[1])
    end
end
