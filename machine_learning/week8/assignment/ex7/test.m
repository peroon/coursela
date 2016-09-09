% for Q1
% load('ex7data2.mat');
% K = 3; % 3 Centroids
% initial_centroids = [3 3; 6 2; 8 5];
% idx = findClosestCentroids(X, initial_centroids);
%散布図
%scatter(X(:,1), X(:,2))

% for Q2
%centroids = computeCentroids(X, idx, K);

% for Q4
load ('ex7faces.mat')
displayData(X(1:100, :));
[X_norm, mu, sigma] = featureNormalize(X);
[U, S] = pca(X_norm);
displayData(U(:, 1:36)');
K = 100;

size(X_norm) % e.g. 5000x1024
size(U) % e.g. 1024x1024
K % e.g. 100

Z = projectData(X_norm, U, K);
