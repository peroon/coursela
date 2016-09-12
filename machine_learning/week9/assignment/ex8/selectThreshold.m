function [bestEpsilon bestF1] = selectThreshold(yval, pval)
%SELECTTHRESHOLD Find the best threshold (epsilon) to use for selecting
%outliers
%   [bestEpsilon bestF1] = SELECTTHRESHOLD(yval, pval) finds the best
%   threshold to use for selecting outliers based on the results from a
%   validation set (pval) and the ground truth (yval).
%

% yval: 0/1ラベル
% pval: 確率

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;

%stepnum = 10; %for debug
stepnum = 1000;

stepsize = (max(pval) - min(pval)) / stepnum;

% εを変えながら
for epsilon = min(pval):stepsize:max(pval)

    % ====================== YOUR CODE HERE ======================
    % Instructions: Compute the F1 score of choosing epsilon as the
    %               threshold and place the value in F1. The code at the
    %               end of the loop will compare the F1 score for this
    %               choice of epsilon and set it to be the best epsilon if
    %               it is better than the current choice of epsilon.
    %
    % Note: You can use predictions = (pval < epsilon) to get a binary vector
    %       of 0's and 1's of the outlier predictions

    %予測する
    is_predicted_anomaly = pval < epsilon; % n x 1

    %anomalyと判定して、正解もanomaly
    true_positive = sum((is_predicted_anomaly==1) & (yval==1));

    %anomalyと判定。正解はanomalyじゃない
    false_positive = sum((is_predicted_anomaly==1) & (yval==0));

    %anomalyなのにnot anomalyと判定してしまった
    false_negative = sum((is_predicted_anomaly==0) & (yval==1));

    %F1を求めるための準備
    prec = true_positive / (true_positive + false_positive);
    rec = true_positive / (true_positive + false_negative);

    F1 = 2 * prec * rec / (prec + rec);

    % =============================================================

    if F1 > bestF1
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end
