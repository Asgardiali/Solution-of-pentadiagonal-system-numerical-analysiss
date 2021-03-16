function x=LUPentadiagSolve(d,e,f,g,h,r,A)

[m,n]=size(A);

if m~=n
    error('Matrix must be square'); 
end

% Lineer sistemin simetrik olup olmadýðýna bakýldý.
if (A==A')    
    
    %Dönüþümleri yapmak için gerekli iþlemleri yaptýrdým.
       
    alpha=zeros(n,1);
    gamma=zeros(n-1,1);
    delta=zeros(n-2,1);
    c=zeros(n,1);
    z=zeros(n,1);
    
    alpha(1)=f(1);
    gamma(1)=g(1)/alpha(1);
    delta(1)=h(1)/alpha(1);
    
    alpha(2)=f(2)-g(1)*gamma(1);
    gamma(2)=(g(2)-h(1)*gamma(1))/alpha(2);
    delta(2)=h(2)/alpha(2);
    
    for k=3:n-2
        alpha(k)=f(k)-h(k-2)*delta(k-2)-alpha(k-1)*gamma(k-1)^2;
        gamma(k)=(g(k)-h(k-1)*gamma(k-1))/alpha(k);
        delta(k)=h(k)/alpha(k);
    end
    
    alpha(n-1)=f(n-1)-h(n-3)*delta(n-3)-alpha(n-2)*gamma(n-2)^2;
    gamma(n-1)=(g(n-1)-h(n-2)*gamma(n-2))/alpha(n-1);
    alpha(n)=f(n)-h(n-2)*delta(n-2)-alpha(n-1)*gamma(n-1)^2;
    
    %Lx=b, Dc=z iþlemi yapýldý
    
    z(1)=r(1);
    z(2)=r(2)-gamma(1)*z(1);
    
    for k=3:n
        z(k)=r(k)-gamma(k-1)*z(k-1)-delta(k-2)*z(k-2);
    end
    
    c=z./alpha;
        
    % L'x=c
    x(n)=c(n);
    x(n-1)=c(n-1)-gamma(n-1)*x(n);
    
    for k=n-2:-1:1
        x(k)=c(k)-gamma(k)*x(k+1)-delta(k)*x(k+2);
    end
    
else        % Simetrik olmayan matrisler için hesplama yaýlan kýsým.

        
    alpha=zeros(n,1);
    gam=zeros(n-1,1);
    delta=zeros(n-2,1);
    bet=zeros(n,1);
    
    c=zeros(n,1);
    z=zeros(n,1);
           
    %A=LR
    alpha(1)=f(1);
    gam(1)=h(1)/alpha(1);
    delta(1)=g(1)/alpha(1);
    bet(2)=e(2);
    alpha(2)=f(2)-bet(2)*gam(1);
    gam(2)=( h(2)-bet(2)*delta(1) )/alpha(2);
    delta(2)=g(2)/alpha(2);
    
    for k=3:n-2
        bet(k)=e(k)-d(k)*gam(k-2);
        alpha(k)=f(k)-d(k)*delta(k-2)-bet(k)*gam(k-1);
        gam(k)=( h(k)-bet(k)*delta(k-1) )/alpha(k);
        delta(k)=g(k)/alpha(k);
    end
    
    bet(n-1)=e(n-1)-d(n-1)*gam(n-3);
    alpha(n-1)=f(n-1)-d(n-1)*delta(n-3)-bet(n-1)*gam(n-2);
    gam(n-1)=( h(n-1)-bet(n-1)*delta(n-2) )/alpha(n-1);
    bet(n)=e(n)-d(n)*gam(n-2);
    alpha(n)=f(n)-d(n)*delta(n-2)-bet(n)*gam(n-1);
    %b=Lc
    c(1)=r(1)/alpha(1);
    c(2)=(r(2)-bet(2)*c(1))/alpha(2);
    
    for k=3:n
        c(k)=( r(k)-d(k)*c(k-2)-bet(k)*c(k-1) )/alpha(k);
    end
    
    
    %Rx=c
    x(n)=c(n);
    x(n-1)=c(n-1)-gam(n-1)*x(n);
    for k=n-2:-1:1
        x(k)=c(k)-gam(k)*x(k+1)-delta(k)*x(k+2);    
    end
   
end
