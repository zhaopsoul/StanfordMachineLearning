function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2);
J_history = zeros(num_iters, 1);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    %theta = theta - ((X * theta - y)' * X * alpha/m)';
    
    %t = theta;
    %for j = 1 : n
    %     t(j) = theta(j)- alpha/m * (( X * theta - y)'*X(:,j)); 
    %end;
    %theta = t;

   temp = zeros(size(X,2),1);
    for i = 1:size(X,2)
        temp(i) = theta(i) - (alpha/m)*((X*theta-y)')*X(:,i);;
    end
    
    for i = 1:size(X,2)
        theta(i) = temp(i);
    end

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end