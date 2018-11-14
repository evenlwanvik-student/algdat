#mutable struct DisjointSetNode
#    rank::Int
#    p::DisjointSetNode
#    DisjointSetNode() = (obj = new(0); obj.p = obj;)
#end


function findset(x::DisjointSetNode)
    if (x != x.p)
        x.p = findset(x.p)
    end
    return x.p
end

function my_union!(x::DisjointSetNode, y::DisjointSetNode)
    link(findset(x), findset(y))
end

function link(x::DisjointSetNode, y::DisjointSetNode)
    if (x.rank > y.rank)
        y.p = x
    else
        x.p = y
        if (y.rank == x.rank)
            y.rank = y.rank + 1
        end
    end
end

function hammingdistance(s1::String, s2::String)
    dist = 0 # accumulated "distance" between strings
    for i = 1:length(s1)
        if (Int(s1[i]) - Int(s2[i]) != 0) # if letters at element i dont match
            dist = dist + 1 # increase distance strings
        end
    end
    return dist
end

function findclusters(E::Vector{Tuple{Int, Int, Int}}, n::Int, k::Int)
    A = []
    sort!(E)
    nodes = []
    for i = 1:n
        push!(nodes, DisjointSetNode())
    end
    counter = 1
    while (counter <= n-k)
        edge = E[counter] # edge is tuple (w,u,v)
        if findset(nodes[edge[2]]) != findset(nodes[edge[3]]) # compare rootnode of node u and v
            push!(A,edge)
            my_union!(nodes[edge[2]], nodes[edge[3]])
        end
        counter = counter + 1
    end
    clusters = []
    c = 1 # cluster iterator
    push!(clusters, [])
    push!(clusters[1],[E[1][2]])
    clusterParent = findset(nodes[E[1][2]])
    println(nodes)
    for i = 2:n
        if findset(nodes[E[i][2]])==clusterParent
            push!(clusters[1][c], E[i][2])
        else
            c = c + 1
        end
    end
    if length(clusters[1]) < 2
        return clusters[1]
    else
    	return clusters
    end
end
