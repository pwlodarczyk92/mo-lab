function [] = check(A)
    function [] = pqr(M, s)
        [R, p, q] = rozklad(M, s);
        L = tril(R, -1) + eye(size(R));
        U = triu(R);
        P = eye(size(R));
        P = P(p,:);
        Q = eye(size(R));
        Q(q,:) = Q;
        P * M * Q - L * U
        b = transpose([1, 2, 3, 4]);
        [x] = rozwiaz(R,b);
        L * U * x - b
    end
    pqr(A, 0);
    pqr(A, 1);
    pqr(A, 2);
end


