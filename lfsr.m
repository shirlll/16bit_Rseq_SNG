function[seq,c]=lfsr(s,t)

n=length(s);
c(1,:)=s;
m=length(t);
N = 2^n-2;
for k=1:N
    b(1)=xor(s(t(1)), s(t(2)));
    if m>2
        for i=1:m-2
        b(i+1)=xor(s(t(i+2)), b(i));
        end
    end
    j=1:n-1;
    s(n+1-j)=s(n-j);
    s(1)=b(m-1);
    c(k+1,:)=s;
end
seq=c(:,n);