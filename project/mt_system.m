function mts = mt_system(len, poles)

% MT_SYSTEM - Generates the Malmquist-Takenaka system.
%
% Usage: 
%     mts = mt_system(len,poles)
%
% Input parameters:
%     len   : number of points in case of uniform sampling 
%     poles : poles of the rational system
%
% Output parameters:
%     mts : the elements of the MT system at the uniform sampling points as
%           row vectors
%
% Copyright: (C) ELTE IK NumAnal, GPL 1.1 ??


[np,mp] = size(poles);
if np ~= 1 || len < 2
    error('Wrong parameters!');
end
if max(abs(poles)) >= 1
    error('Bad poles!');
end

mts = zeros(mp,len);
t = linspace(-pi,pi,len+1);
t = t(1:len);
z = exp(1i*t);

fi = ones(1,len); % the product defining MT elements so far
for j = 1:mp
    co = sqrt(1 - (abs(poles(j))^2) );
    rec = 1 ./ (1 - conj(poles(j)).*z);
    lin = co .* rec;
    bla = (z - poles(j)) .* rec; 
    mts(j,:) = lin .* fi;
    fi = fi .* bla;
end
