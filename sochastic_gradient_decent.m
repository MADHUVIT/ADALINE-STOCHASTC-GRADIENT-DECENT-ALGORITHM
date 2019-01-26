x1=input('enter 1st input row vector:')';
x2=input('enter 2nd input row vector:')';
y=input('enter target vector');
k=input('enter the number of epochs');
m=2; % two features
n=length(y);
X=[ones(n,1) x1 x2]; %adding bias term
w=[0 0 0]'; %initializing the weights to zeors
for q=1:k
    for g=1:n
        h=X(g,:)*w;
        e=y(g)-h;
        w=w+(0.1*e*X(g,:)');
    end
end
while n~=0
n=input('enter 0 to stop and any number to test') ;     
tx1=input('enter x1 value:');
tx2=input('enter x2 value');
tX=[1 tx1 tx2];

  
  out=tX*w;
  disp(out);
end

        

