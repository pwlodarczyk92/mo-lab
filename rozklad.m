function [R, p, q] = rozklad(A, s)
    if s != 0 && s != 1 && s != 2
        error(sprintf("invalid variant: %d", s));
    end

    m = size(A);
    function [p, q] = pivot(i)
        if s == 0
            p = i;
            q = i;
        elseif s == 1
            [max_v, max_p] = max(abs(A(i:m, i)));
            p = max_p(1) + i - 1;
            q = i;
        elseif s == 2
            [max_v, max_pq] = max(abs(A(i:m, i:m)));
            p = max_pq(1) + i - 1;
            q = max_pq(2) + i - 1;
        end
    end

    p = 1:m;
    q = 1:m;
    for i = 1:(m-1)
        [p_idx, q_idx] = pivot(i);
        p([i p_idx]) = p([p_idx i]);
        q([i q_idx]) = q([q_idx i]);

        A([i, p_idx], 1:m) = A([p_idx, i], 1:m);
        A(1:m, [q_idx, i]) = A(1:m, [i, q_idx]);

        pivot_value = A(i, i);
        pivot_row = A(i, i:m);   
        for j = i+1:m
            scale = A(j, i)/pivot_value;
            A(j,i:m) -= pivot_row.*scale;
            A(j,i) = scale;
        end
    end
    R = A;

end


