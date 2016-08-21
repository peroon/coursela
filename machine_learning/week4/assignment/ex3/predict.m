function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1); %データ数
num_labels = size(Theta2, 1); %クラス数

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Add ones to the X data matrix
X = [ones(m, 1) X]; % m x n

'A2をもとめる'
A2 = sigmoid(Theta1 * X'); %(25x401 x 401xm) -> (25xm)
'bias項として行を足す'
A2 = [ones(1, m); A2]; % 26 x m

'A3をもとめる'
A3 = sigmoid(Theta2 * A2) %(10x26 x 26xm) -> (10xm)
%転置 (m x 10)
A3T = A3';

for i=1:m
  [max_value, max_index] = max(A3T(i, :));
  p(i) = max_index;
end







% =========================================================================


end
