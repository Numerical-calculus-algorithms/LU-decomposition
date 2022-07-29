% LU decomposition

function[L, U]=Elleu(A)

dim = size(A);
L = eye(dim); % Initialization of L as a special lower triangular matrix
for k = 1:dim-1

    if A(k, k) == 0
        return
    end

    for i = k+1:dim

        L(i, k) = A(i, k)/A(k, k); % Calculation of the multiplier

        for j = k+1:dim

            A(i, j) = A(i, j) - L(i, k)*A(k, j); % Calculation of the elements of U

        end

    end

end
U = triu(A);