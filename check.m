function [] = check(A, b)
    function [] = pqr(M, s)
        [R, p, q] = rozklad(M, s);
        [x] = rozwiaz(R,p,q,b);
        M * x - b
    end
    pqr(A, 0);
    pqr(A, 1);
    pqr(A, 2);
end


