# ∀ ci ∈ C(ci/c(i+1) ∈ N) , where C=⟨c1,…,cn⟩, ci>ci+1 og 1≤i≤n−1
function can_use_greedy(c)
    n = length(c)
    for i = 1:(n-1) # 1≤i≤n−1
        # check if there is a remainder of modulo, i.e. the division does not produce a natural number
        # Also if ci>ci+1, the modulo returns a remainder..
        if (c[i] % c[i+1] != 0)
            return false
        end
    end
    return true
end

function min_coins_greedy(coins, value)
    i = 1 # current coin
    n_coins = 0
    while (value > 0)
        if coins[i] > value
            i = i+1
        else
            value = value - coins[i]
            n_coins = n_coins+1
        end
    end
    return n_coins
end

function min_coins_dynamic(coins,value)
    results = fill(typemax(Int),value)
    new_coins = [] # holds the coins we'll be using
    for i = 1:length(coins)
        if (coins[i] <= value) # check if the coins are actually usable
            results[coins[i]] = 1
            push!(new_coins,coins[i])
        end
    end
    println(new_coins)
    for val = 1:(value) # element [1] is 0
        if (results[val] < typemax(Int))
            continue
        end
        println(val)
        best = typemax(Int)
        for i = 1:length(new_coins)
            if (coins[i] <= val)
                current = 1 + results[val-coins[i]]

                if (current < best)
                    best = current
                end
            end
        end
        results[val] = best
    end
    return results[value]
end
