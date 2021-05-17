function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
 
    hypothesis_initial = (theta')*(X');
    hypothesis_final = (hypothesis_initial)';
    Error = hypothesis_final - y;
    
   J_theta1 = 1/(m)* Error' * (X(:,1));
   J_theta2 = 1/(m)* Error' * (X(:,2));
   
   %disp(1);
   
   %disp(theta);
   theta(1,1) = theta(1,1) - alpha * J_theta1;
   theta(2,1) = theta(2,1) - alpha * J_theta2;
   
   %disp(200000);
   %disp(theta);


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

%disp(theta);
%disp(size(theta));
%disp(J_theta2);

end
