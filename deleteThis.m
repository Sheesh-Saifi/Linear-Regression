data = load('ex1data1.txt');
X = data(:, 1)
y = data(:, 2)
theta = [-1;2]
m=length(X);
X = [ones(m, 1), X(:,1)] % Add a column of ones to x
h= X*(theta)
temp=0;
J=0;
for i=1:m,
    temp=temp+ (h(i)-y(i))^2;
end
J=temp/(2*m)
