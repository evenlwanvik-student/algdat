using Printf

weights = [3 6 8 6 3; 7 6 5 7 3; 4 10 4 1 6; 10 4 3 1 2; 6  1  7 3 9]
A = [0 68 50 99 64 2 7 84 0 84;
12 58 97 80 80 78 47 19 65 69;
82 52 113 156 131 75 86 103 70 84;
126 84 71 126 170 104 149 101 70 142;
84 143 120 81 120 198 136 128 149 121;
112 175 178 89 87 170 165 181 210 218]

function cumulative(weights)
    rows, cols = size(weights) # dimensjonene til en matrisen
    ret_matrix = copy(weights) # initialize the return matrix, assuming input matrix is of type Int
    for i = 2:rows # loop through rows, first row is the same
        for j = 1:cols # loop through columns
            if (j==1) # if at first column
                w_min = min(ret_matrix[i-1,j], ret_matrix[i-1,j+1]) # find smalles value from previous row
            elseif (j == cols) # if at last column
                w_min = min(ret_matrix[i-1,j-1], ret_matrix[i-1,j]) # find smalles value from previous row
            else
                w_min = min(ret_matrix[i-1,j-1],ret_matrix[i-1,j], ret_matrix[i-1,j+1])
            end
            ret_matrix[i,j] = w_min + ret_matrix[i,j] # add smallest weight to current element
        end
    end
    return ret_matrix
end

# returns tuple of column and value of biggest weight
# -1 input at either side indicate edge columns
# always pick the "leftest" column
function col_min(col,left,ctr,right) # col is the column at which we are checking which way to go..
    if left < 0
        if ctr <= right
            return col
        else
            return col+1
        end
    elseif right < 0
        if left <= ctr
            return col-1
        else
            return col
        end
    else
        if left <= ctr
            if left <= right
                return col-1
            else
                return col+1
            end
        else
            if ctr <= right
                return col
            else
                return col+1
            end
        end
    end
end

function back_track(path_weights)
    w = copy(path_weights)
    rows, cols = size(path_weights)
    col = argmin(w[rows,:])
    println(col)
    path = []
    push!(path, (rows, col))
    for row in (rows-1):-1:1
        if col == 1 # 1 and cols indicate edge columns, therefore special cases
            # set path column to the next minimum weight column
            col = col_min(col, -1, w[row,col], w[row,col+1])
            # add tuple of the row and column indexes of the weight in current path
            push!(path, (row, col))
        elseif col == cols
            col = col_min(col, w[row,col-1], w[row,col], -1)
            push!(path, (row, col))
        else
            col = col_min(col, w[row,col-1], w[row,col],  w[row,col+1])
            push!(path, (row, col))
        end
    end
    return path
end

# returns tuple of column and value of biggest weight
# -1 input at either side indicate edge columns
# always pick the "leftest" column
function col_min(col,left,ctr,right) # col is the column at which we are checking which way to go..
    if left < 0
        if ctr <= right
            return col
        else
            return col+1
        end
    elseif right < 0
        if left <= ctr
            return col-1
        else
            return col
        end
    else
        if left <= ctr
            if left <= right
                return col-1
            else
                return col+1
            end
        else
            if ctr <= right
                return col
            else
                return col+1
            end
        end
    end
end

function seam_carving(weights)
    w = copy(weights)
    rows, cols = size(weights) # get dimensions
    #energy = Array{Int64}(0, cols) # Total energy per path
    paths = [] # keep track of the path
    path_energy = [] # keep track of total energy per path
    return_path = []
    min_energy = Inf # initialize smallest total energy count to infinity
    # "c" every path starting from column 1, while "col" is at every row of path
    for c = 1:cols
        push!(paths,[])
        col = c
        push!(paths[c], (rows, col)) # first row and column index is already set
        path_energy = w[rows,col] # same for energy
        for row = (rows-1):-1:1
            if col == 1 # 1 and cols indicate edge columns, therefore special cases
                # set path column to the next minimum weight column
                col = col_min(col, -1, w[row,col], w[row,col+1])
                # cumulate weights to form total path energy
                path_energy = path_energy + w[row,col]
                # add tuple of the row and column indexes of the weight in current path
                push!(paths[c], (row, col))
            elseif col == cols
                col = col_min(col, w[row,col-1], w[row,col], -1)
                path_energy = path_energy + w[row,col]
                push!(paths[c], (row, col))
            else
                col = col_min(col, w[row,col-1], w[row,col],  w[row,col+1])
                path_energy = path_energy + w[row,col]
                push!(paths[c], (row, col))
            end
        end
        if path_energy < min_energy
            return_path = paths[c]
            min_energy = path_energy # set current smalles energy path
        end
    end
    return return_path
end
