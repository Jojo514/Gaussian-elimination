function [s] = ssmu06_06f(a,y)

[ec1,ec2] = size(a);
for i=1:1:ec1
    a(i,ec2+1)=-1*y(i,1);
end

[d1,d2] = size(a);

scale = a(1,1);
a(1,:)=(1/scale)*a(1,:);

add=0;
counter = 1;

while counter < d1
    for i=2+add:1:d1
        c=a(i,1+add);
        for j=1+add:1:d2
            a(i,j)=a(i,j)-c*a(1+add,j);
        end
        if i==d1
            add = add +1;
            scale = a(1+add,1+add);
            a(1+add,:)=(1/scale)*a(1+add,:);
        end
    end
    counter = counter +1;
end

counter = 0;
for i=d1:-1:1
    for j=d2:-1:d2-counter
        a(i,j)=-1*a(i,j);
    end
    counter = counter +1;
end

for i=1:1:d1
    yy(i,1)=a(i,d2);
end
yy;
a(:,d2)=[];

solu = zeros(1,d1);
solu(1,d1)=yy(d1,1);
[d1,d2] = size(a);

counter = 0;
for i=d1-1:-1:1
    for j=d2:-1:d2-counter
        a(i,j)=a(i,j)*solu(1,j);
    end
    for k=d2:-1:d2-counter
        solu(1,i)=solu(1,i)+a(i,k);
    end
    solu(1,i)=solu(1,i)+yy(i,1);
    counter = counter +1;
end
s=solu;

end