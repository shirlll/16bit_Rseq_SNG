
for k = 1:65535
    for m = 1:16
        cd(k,m) = c(k,m)*2^(16-m);
    end
    
    cf2(k)=sum(cd(k,:))/2^16;

end