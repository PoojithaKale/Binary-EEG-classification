function [co,err] = mt_coeffs(v,poles)

% MT_COEFFS - Coefficients of a vector in the Malmquist-Takenaka basis.
%
% Usage: 
%     [co,err] = mt_coeffs(v,poles)
%
% Input parameters:
%     v     : an arbitrary vector  
%     poles : poles of the rational system
%
% Output parameters:
%     co  : the Fourier coefficients of 'v' with respect to the MT system
%           defined by poles
%     err : L^2 norm of the approximation error 
%
% Copyright: (C) ELTE IK NumAnal, GPL 1.1 ??


np = size(poles,1);
[nv,mv] = size(v);
if np ~= 1
    error('Wrong pole parameters!');
end
if nv ~= 1
    error('Wrong vector to calc!');
end
if max(abs(poles)) >= 1
    error('Bad poles!');
end

mts = mt_system(mv,poles);
co = (mts * v' / mv)';
err = norm(co*mts - v);
