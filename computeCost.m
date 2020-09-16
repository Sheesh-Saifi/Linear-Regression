function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
%data = load('ex1data1.txt'); % read comma separated data
%X = data(:, 1); y = data(:, 2);
m=length(X); % Add a column of ones to x
h= X*(theta);
temp=0;
J=0;
%for i=1:m,
%    temp=temp+ (h(i)-y(i))^2;
%end
temp= sum((h-y).^2);
J=temp/(2*m);
J=J(1);




% =========================================================================
end