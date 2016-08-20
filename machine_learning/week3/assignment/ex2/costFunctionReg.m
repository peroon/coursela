function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

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

% m(訓練データ数)回まわす
sum = 0;
for i=1:m
  x_i = X(i,:); %i番目のデータ

  h = sigmoid(x_i * theta);

  sum += (-y(i) * log(h) - (1-y(i)) * log(1-h));
end
J = 1/m * sum;
%正規化分を書き足す
n = length(theta)
theta_sum = theta(2:n)' * theta(2:n);
J += lambda / (2*m) * theta_sum;

% 傾き
theta_len = length(theta);
for j=1:theta_len
  grad(j) = 1/m * (sigmoid(X * theta) - y)' * X(:,j);
end
%正規化分を書き足す
for j=2:theta_len
  grad(j) += lambda / m * theta(j);
end



% =============================================================

end
