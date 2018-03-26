% T=200;/
h=0.0005;
q=ones(400001,2,1);
p=ones(400001,2,1);
A=ones(400001,1);
Aa=ones(400000,1);
H=ones(400001,1);
Hh=ones(400000,1);

q(1,1)=1-0.6;
q(1,2)=0;

p(1,1)=0;
p(1,2)=2;


for index=1:400001
    
    frac=(-1)/(((q(index,1)^2 +q(index,2)^2))^(3/2));
    p_prm1=frac*q(index,1);
    p_prm2=frac*q(index,2);
    
    p(index+1,1)=p(index,1)+h*p_prm1;
    p(index+1,2)=p(index,2)+h*p_prm2;
    
    q_prm1=p(index,1);
    q_prm2=p(index,2);
    
    q(index+1,1)=q(index,1)+h*q_prm1;
    q(index+1,2)=q(index,2)+h*q_prm2;
    
    A(index)=q(index,1)*p(index,2)-q(index,2)*p(index,1);
    H(index)=(1/2)*(p(index,1)^2+p(index,2)^2)-1/(sqrt(q(index,1)^2+q(index,2)^2));
end

% plot(q(:,1),q(:,2),'r.');
%  plot(A,'r'); 
% hold on;
plot(H,'r');
hold on;

for index=1:400000
    
    q(index+1,1)=q(index,1)+h*p(index,1);
    q(index+1,2)=q(index,2)+h*p(index,2);
    
    frac=(h)/(((q(index+1,1)^2 +q(index+1,2)^2))^(3/2));
    p(index+1,1)=p(index,1)-frac*q(index+1,1);
    p(index+1,2)=p(index,2)-frac*q(index+1,2);
    
   Aa(index)=q(index,1)*p(index,2)-q(index,2)*p(index,1);
   Hh(index)=(1/2)*(p(index,1)^2+p(index,2)^2)-1/(sqrt(q(index,1)^2+q(index,2)^2));

end


% plot(q(:,1),q(:,2),'b.');
%  plot(Aa,'b');
 plot(Hh,'b');
   