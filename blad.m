function [] = blad(A, b, s)
    printf("\nwariant %i: \n", s);
    [R, p, q] = rozklad(A, s);
    [x] = rozwiaz(R,p,q,b);
    [r] = b - A * x;
    x
    rel_error = cond(A) * norm(r) / norm(b)
end


