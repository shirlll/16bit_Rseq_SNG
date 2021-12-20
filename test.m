clearvars -except cf S1 S3 S4 t s cf2

% 
% dskfsl = rand(1,1e5);
% max_i = 26;
% for i = 2:2:max_i
%    [err(i),best(i)]=b_est(dskfsl,2^(i/2)*1.5) ;
%    term(i) = 2^(i/2)*1.5;
%    [err(i-1),best(i-1)]=b_est(dskfsl,2^(i/2));
%    term(i-1) = 2^(i/2);
% end

dskfsl = rand(1,1e5);
max_i = 5;
for i = 1:max_i
   [err(i),best(i)]=b_est(dskfsl,10^(i-1)+5) ;
   term(i) = 10^i;

end

% r1 = rand(1,1e5);
% r2 = rand(1,1e5);
% max_i = 5;
% for i = 1:max_i
%    [err(i),best(i)]=MonteCarloPi(cf,cf2,10^(i-1)+5) ;
%    term(i) = 10^i;
% 
% end

out = abs(err);
semilogx(term,out,'*--');
hold on;