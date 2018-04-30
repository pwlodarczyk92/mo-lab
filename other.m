function [z] = rozwiaz(R, p, q, b)
    m = size(R);
    L = tril(R, -1) + eye(m);
    U = triu(R);
    z = [];
    for i = 1:m
        z(i) = b(i)
        b -= L(1:m).*b(i)
    end
end


