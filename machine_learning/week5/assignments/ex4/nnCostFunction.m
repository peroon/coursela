function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices.
%
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly
J = 0;
Theta1_grad = zeros(size(Theta1)); %25x401
Theta2_grad = zeros(size(Theta2)); %10x26

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%

K = num_labels;
for i=1:m
  x = [1 X(i,:)]; % 1x401
  a2 = [1; sigmoid(Theta1 * x')]; % 26x1
  h = sigmoid(Theta2 * a2); %a3　10x1 vector

  %ラベルを0,1のベクトルにしたやつ
  y_vec = [1:K] == y(i); % 10x1

  % 縦ベクトルのまま計算したい
  K_sum = sum(-y_vec * log(h) - (1-y_vec) * log(1-h));
  J += K_sum;
end

J /= m;

% 正規化分
Theta1_no_bias = Theta1(:, 2:end); %バイアス部分は不要
Theta2_no_bias = Theta2(:, 2:end);
sum1 = sum(sum((Theta1_no_bias .* Theta1_no_bias)));
sum2 = sum(sum((Theta2_no_bias .* Theta2_no_bias)));
J += lambda / (2 * m) * (sum1 + sum2);


% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the
%               first time.

%次はgradを求めたい

triangle1 = zeros(size(Theta1)); %25x401
triangle2 = zeros(size(Theta2)); %10x26

% データ数分、回す
for i=1:m
  x = X(i,:); %1x400
  a1 = [1 x]; %1x401

  %foward propagation
  z2 = Theta1 * a1'; %25x401 x 401x1 = 25x1
  a2 = [1; sigmoid(z2)]; %26x1
  h = sigmoid(Theta2 * a2); %10x26 x 26x1 = 10x1

  %誤差を計算する
  %ラベルを0,1のベクトルにしたやつ
  y_vec = [1:K] == y(i); % 1x10
  y_vec = y_vec'; %10x1

  delta3 = h - y_vec; % 10x1

  delta2 = Theta2' * delta3 .* sigmoidGradient([1;z2]); %26x10 x 10x1 .* 26x1
  delta2 = delta2(2:end); %25x1 biasの除去

  triangle1 += delta2 * a1; %25x1 x 1x401 = 25x401
  triangle2 += delta3 * a2'; %10x1 x 1x26 = 10x26
end

Theta1_grad = triangle1 / m;
Theta2_grad = triangle2 / m;




%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

% 正規化分をgradに足す

%bias部分(j=0)のθを0にしたもの
zero_row_1 = zeros(size(Theta1, 1), 1);
Theta1_bias_zero = [zero_row_1 Theta1(:, 2:end)];

zero_row_2 = zeros(size(Theta2, 1), 1);
Theta2_bias_zero = [zero_row_2 Theta2(:, 2:end)];

%正規化分を足す
Theta1_grad += lambda / m * Theta1_bias_zero;
Theta2_grad += lambda / m * Theta2_bias_zero;




% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
