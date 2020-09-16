%theta = gradientDescent(X, y, [-1;2], 0.1,length(X));
%theta = gradientDescent([1 5; 1 2],[1 6]',[.5 .5]',0.1,10);

%NOTE - use X matrix with its first column as 1. Check ex1.mlx for more
%info on how this is and how to do it.

theta = gradientDescent(X, y, theta, alpha, iterations);
% Print theta to screen
% Display gradient descent's result
fprintf('Theta computed from gradient descent:\n%f,\n%f',theta(1),theta(2))
disp(theta)
size(theta)
% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
plot(x, y, 'rx', 'MarkerSize', 10); % Plot the data . here x is the original value of X(without first column as column).
ylabel('Profit in $10,000s'); % Set the y-axis label
xlabel('Population of City in 10,000s');
hold off % don't overlay any more plots on this figure

% Predict values for population sizes of 35,000 and 70,000
predict1 = [1, 3.5] *theta;
fprintf('For population = 35,000, we predict a profit of %f\n', predict1*10000);
predict2 = [1, 7] * theta;
fprintf('For population = 70,000, we predict a profit of %f\n', predict2*10000);