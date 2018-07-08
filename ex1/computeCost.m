function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
%J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% s is the sum from i to m within the squared-error function aka cost-function
% h is the hypothesis function 
%s = 0;
%h = (X*theta);
%for i = 1:m
%  s += (h(i) - y(i)).^2;
%end

% better vectorized instead of for loop
s = sum((X*theta - y).^2);
J = (1/(2*m)) * s;


% =========================================================================

end
