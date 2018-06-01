function [] = blad(A, b, s)
    [R, p, q] = rozklad(A, s);
    [x] = rozwiaz(R,p,q,b);
    [r] = b - A * x;
    A_norm = norm(A)
    rel_error = norm(r) / norm(x)
end


