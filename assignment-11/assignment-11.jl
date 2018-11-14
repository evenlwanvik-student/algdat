using DataStructures
using Printf


m = [[0, Inf, Inf] [7, 0, 4] [2, Inf, 0]]
m2 = [[0, 7, 2] [Inf, 0, Inf] [Inf, 4, 0]]

g(x,y) = x+y
f(x,y) = min(x,y)

function floyd_warshall(adjacency_matrix, nodes, f, g)
    for k = 1:nodes
        for i = 1:nodes
            for j = 1:nodes
                adjacency_matrix[i,j] = f(adjacency_matrix[i,j], g(adjacency_matrix[i,k], adjacency_matrix[k,j]))
            end
        end
    end
    return adjacency_matrix
end

function transitive_closure(adjacency_matrix, nodes)
    M = copy(adjacency_matrix)
    T = zeros(Int64,nodes,nodes)
    for i = 1:nodes
        for j = 1:nodes
            if (i == j || ((M[i,j] > 0) & (M[i,j] != Inf)))
                println(M[i,j])
                T[i,j] = 1
            end
        end
    end
    println(T)
    for k = 1:nodes
        for i = 1:nodes
            for j = 1:nodes
                T[i,j] = (convert(Bool,T[i,j])|| (convert(Bool,T[i,k]) && convert(Bool,T[k,j])))
            end
        end
    end
    return T
end

ballots = ["ABC", "CBA", "BAC"]
voters = 3
candidates = 3

function create_preference_matrix(ballots, voters, candidates)
    P = zeros(candidates,candidates)
    for j = 1:candidates # iterating over each candidate
        c = string('A'+j-1) # character of current candidate
        for vote in ballots
            current = findfirst(c, vote)[1] # position of current candidate in current ballot
            println(vote)
            for k = 1:candidates # the position of each candidate in respect to current (j)
                other =  findfirst(string(vote[k]), vote)[1] # position of other candidates in current ballot
                # @printf "Comparing current %s at position %d with %c at position %d\n" c current vote[k] other
                if (current < other) # if index of current character is smaller than other in the ballot
                    u = Int(vote[k]-'A'+1) # the index of other candidate in respect to current
                    P[j,u] = P[j,u] + 1
                end
            end
            #println("")
        end
    end
    return P
end

function find_strongest_paths(preference_matrix, candidates)
    
end
