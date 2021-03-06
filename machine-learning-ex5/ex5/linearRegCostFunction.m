function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%




% X = 12 x 2
% y = 12 x 1
% theta = 2 x 1

thetareg = [0; theta(2:end)];

ho = X * theta;
dif = ho - y;
m2 = 2 * m;

J = ((dif' * dif) / m2) + (sum(thetareg .^ 2) * lambda / m2);
grad = ((X' * dif) ./ m) + (thetareg .* lambda ./ m);


% =========================================================================

grad = grad(:);

end
