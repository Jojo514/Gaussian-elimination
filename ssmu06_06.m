clear
clc
close all

%a = [-1 -4 9 4; 2 6 -1 3; 3 -5 8 2; 1 -7 2 -1]
%y = [1; 6; 25; -11]

%a = [1 1 1; 4 2 1; 9 3 1]
%y = [0; 1; 3]

a = [5 7 9 1 3; -60 35 -61 -21 8; 7 2 32 97 1;1 -98 -32 -44 -14; -12 3 4 5 7]
y = [20 32; -69 54.3; 79 87.128; 32 87.432; 11 40]

%a = [2 2 3; 4 5 6; 7 8 9]
%y = [1, 7; 2, 4; 0, 9]


[d1,d2] = size(y);
sol = zeros(d2,d1);

for i=1:1:d2
    sol(i,:)=ssmu06_06f(a,y(:,i));
end

sol

