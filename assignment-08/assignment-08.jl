using DataStructures: Queue, enqueue!, dequeue!

function makenodelist(adjacencylist)
    nNodes = length(adjacencylist)
    nodes = []
    for i = 1:nNodes push!(nodes,Node(i)) end # Initialize array of nodes
    i = 1
    for i_node in adjacencylist
        for neighbour in i_node
            push!(nodes[i].neighbours, nodes[neighbour])
        end
        i = i+1
    end
    return nodes
end

function printnodelist(nodelist)
    println("Skriver ut nodeliste med printnodelist")
    for node in nodelist
        neighbourlist = [neighbours.id for neighbours in node.neighbours]
        println("id: $(node.id), neighbours: $neighbourlist")
    end
end


function main(;n=5, degree=3)
    println("Kjører makenodelist")
    adjacencylist = generateadjacencylist(n, degree)
    @info "adjacencylist" adjacencylist
    nodelist = makenodelist(adjacencylist)
    printnodelist(nodelist)
end

generateadjacencylist(n, degree) = [rand(1:n, degree) for id = 1:n]

# Det kan være nyttig å kjøre mange tester for å se om programmet man har laget
# krasjer for ulike instanser
function runmanytests(;maxlistsize=15)
    # Kjører n tester for hver listestørrelse – én for hver grad
    for n = 1:maxlistsize
        for degree = 1:n
            adjacencylist = generateadjacencylist(n, degree)
            @info "Listelendge $n" n, degree #, adjacencylist
            makenodelist(adjacencylist)
        end
    end
end

function bfs!(nodes, start)
    for v in nodes
        v.color = "WHITE"
        v.distance = typemax(Int)
        #v.predecessor = Nothing
    end
    start.color = "GRAY"
    start.distance = 0
    #start.predecessor = Nothing
    Q = Queue{Node}()
    enqueue!(Q,start)
    while length(Q) > 0
        u = dequeue!(Q)
        for v in u.neighbours
            if v.color == "WHITE"
                v.color == "GRAY"
                v.distance = u.distance + 1
                v.predecessor = u
                enqueue!(Q,v)
            end
        end
        u.color = "BLACK"
        # node object as argument and checks if this is the node we're looking for
    end
    return nodes
end


main()
#runmanytests()
