function [x] = rozwiaz(R, p, q, b)
    b = b(p);
    m = size(R);
    z = zeros(m, 1);
    x = zeros(m, 1);
    for i = 1:m
        z(i) = b(i);
        b(i+1:m) -= R(i+1:m,i).*b(i);
    end
    for i = m:-1:1
        x(i) = z(i)/R(i,i);
        z(1:i-1) -= R(1:i-1,i).*x(i);
    end
    x(q) = x;
end


