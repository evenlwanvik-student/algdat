mutable struct Record
    next::Union{Record,Nothing}  # next kan peke på et Record-objekt eller ha verdien nothing.
    value::Int
end

function createlinkedlist(length, valuerange)
    # Lager listen bakfra.
    next = nothing
    record = nothing
    for i in 1:length
        record = Record(next, rand(valuerange))  # valuerange kan f.eks. være 1:1000.
        next = record
    end
    return record
end

# Funksjonen ble veldig redundant, da det ikke eksisterer en løkke som sjekker tilstander etter iterasjonen
function traversemax(pStart)
    pCurrent = pStart
    largestVal = pCurrent.value
    pNext = pCurrent.next
    while (pNext.next != nothing)
        if (pNext.value > largestVal)
            largestVal = pNext.value
        end
        pNext = pNext.next
    end
    if (pNext.value > largestVal)
        largestVal = pNext.value
    end
    return largestVal
end

function runprog()
    llist = createlinkedlist(3, 1:100)
    println(llist)
    println(traversemax(llist))
end

llist = createlinkedlist(3, 1:100)
println(llist)
println(traversemax(llist))
#traversemax(llist)
