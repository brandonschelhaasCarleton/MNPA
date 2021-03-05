function setVCVS(node1_in, node2_in, node1_out, node2_out, val)
% Node1 = input node
% Node2 = output node
% val = resistor value;

global G C F;

newRow = size(C,1) + 1;
G(newRow, newRow) = 0;
C(newRow, newRow) = 0;
F(newRow) = 0;

% Create stamp for resistor in C matrix
if node1_in ~= 0
    G(newRow, node1_in) = G(newRow, node1_in) - val;
end
if node2_in ~= 0
    G(newRow, node2_in) = G(newRow, node2_in) + val;
end
if node1_out ~= 0
    G(newRow, node1_out) = 1;
    G(node1_out, newRow) = 1;
end
if node2_out ~= 0
    G(newRow, node2_out) = -1;
    G(node2_out, newRow) = -1;
end
end

