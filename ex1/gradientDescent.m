function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% this loop from i = 1:m represents the summation in the given gradientDescent equation
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % get the hypothesis "h"
    h = X*theta;
    
    % calc the stuff insde the summation "s" between the hypotheses and the y values 
    s = X'*(h - y);
    
    % simultaneously update theta_j for all j 
    % ... meaning each cell in current row "num_iters"?
    theta = theta - s*(alpha/m);


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
