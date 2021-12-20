%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Monte Carlo Estimation Examples            %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% clearvars -except S1 S3 S4;
function [err, piest]=MonteCarloPi(Seq3,Seq4,k)
% generate a set of random numbers x(0, 1) and y(0, 1)
x = Seq3(1:k);
y = Seq4(1:k);

% find all y for which x.^2 + y.^2 <= 1
z = x(x.^2 + y.^2 <= 1);

% estimate pi as a probability ratio
% the real value is approx. 3.1416
piest = 4*length(z)/length(x);
err = (piest - pi)/pi;
end
