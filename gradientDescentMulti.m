function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

%m = length(X) % number of training examples
%X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
%theta = zeros(2, 1); % initialize fitting parameters
%iterations = 1500;
%alpha = 0.01;

for iter = 1:num_iters,
    

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    h= X*theta;

    error=h-y;
    change= ((alpha)*(1/m)*(X'*error));
    theta=theta-change;
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta); 
    %hold on;
    %plot(theta,J_history(iter),'-*')
end

end
