function setVoltageSource(node1, node2, val)
% Node1 = input node
% Node2 = output node
% val = resistor value;

global G C F;

newRow = size(C,1) + 1;
G(newRow, newRow) = 0;
C(newRow, newRow) = 0;
F(newRow) = 0;

% Create stamp for resistor in C matrix
if node1 ~= 0 
    G(newRow, node1) = G(newRow, node1) + 1;
    G(node1, newRow) = G(node1, newRow) + 1;
end
if node2 ~= 0
    G(newRow, node2) = G(newRow, node2) - 1;
    G(node2, newRow) = G(node2, newRow) - 1;
end

F(newRow) = val;
end

