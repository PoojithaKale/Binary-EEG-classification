function [r,cv] = energy_relative(inp)
% finding the relative energy in each level of the dwt
% NOTE: energy is high for seizures
[L1,H1] = dwt(inp,'db4');
[L2,H2] = dwt(L1,'db4');
[L3,H3] = dwt(L2,'db4');
[L4,H4] = dwt(L3,'db4');
[L5,H5] = dwt(L4,'db4');
r0 = norm(inp);
r = zeros(1,5);
r(1,1)= norm(L1)/r0;
r(1,2)= norm(L2)/r0;
r(1,3)= norm(L3)/r0;
r(1,4)= norm(L4)/r0;
r(1,5)= norm(L5)/r0;
cv = zeros(1,5);
cv(1,1)= var(L1)/mean(L1);
cv(1,1)= var(L1)/mean(L1);
cv(1,1)= var(L1)/mean(L1);
end

