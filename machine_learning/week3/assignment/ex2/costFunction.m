function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% m(訓練データ数)回まわす
sum = 0;
for i=1:m
  x_i = X(i,:); %i番目のデータ

  h = sigmoid(x_i * theta);

  sum += (-y(i) * log(h) - (1-y(i)) * log(1-h));
end
J = 1/m * sum;

% 傾き
theta_len = length(theta);
for j=1:theta_len
  grad(j) = (sigmoid(X * theta) - y)' * X(:,j);
end






% =============================================================

end
