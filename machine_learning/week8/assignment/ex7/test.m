% for Q1
load('ex7data2.mat');
K = 3; % 3 Centroids
initial_centroids = [3 3; 6 2; 8 5];
idx = findClosestCentroids(X, initial_centroids);
%散布図
%scatter(X(:,1), X(:,2))

% for Q2
centroids = computeCentroids(X, idx, K);
