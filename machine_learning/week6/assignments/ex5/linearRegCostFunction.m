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

% m(訓練データ数)回まわす
sum = 0;
for i=1:m
  x_i = X(i,:); %i番目のデータ

  h = x_i * theta;

  sum += (h - y(i)) .^ 2;
end
J = 1 / (2 * m) * sum;

%正規化分を書き足す
n = length(theta);
theta_sum = theta(2:n)' * theta(2:n);
J += lambda / (2*m) * theta_sum;

% 傾き
for j=1:n
  grad(j) = 1/m * (X * theta - y)' * X(:,j);
end
%正規化分を書き足す
for j=2:n
  grad(j) += lambda / m * theta(j);
end










% =========================================================================

grad = grad(:);

end
