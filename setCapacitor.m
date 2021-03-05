function setCapacitor(node1, node2, val)
% Node1 = input node
% Node2 = output node
% val = resistor value;

global C;

% Create stamp for resistor in C matrix
if node1 ~= 0 && node2 == 0
    C(node1, node1) = C(node1, node1) + val;
end
if node1 == 0 && node2 ~= 0
    C(node2, node2) = C(node2, node2) + val;
end
if node1 ~= 0 && node2 ~= 0
    C(node1, node1) = C(node1, node1) + val;
    C(node2, node2) = C(node2, node2) + val;
    C(node1, node2) = C(node1, node2) - val;
    C(node2, node1) = C(node2, node1) - val;
end
end

