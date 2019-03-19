function c = quatmult(a,b)
    % More humanly understandable version:
    % Omegaa = [a((1)) -a((2):(4)).'
    %           a((2):(4)) a((1))*eye((3))-[0 -a((4)) a((3)); a((4)) 0 -a((2));-a((3)) a((2)) 0]];
    % c = Omegaa*b;
    % More optimized version:
    c_w = a(1)*b(1) - a(2)*b(2) - a(3)*b(3) - a(4)*b(4);
    c_x = a(1)*b(2) + a(2)*b(1) - a(3)*b(4) + a(4)*b(3);
    c_y = a(1)*b(3) + a(3)*b(1) + a(2)*b(4) - a(4)*b(2);
    c_z = a(1)*b(4) - a(2)*b(3) + a(3)*b(2) + a(4)*b(1);
    c = [c_w; c_x; c_y; c_z];
end
