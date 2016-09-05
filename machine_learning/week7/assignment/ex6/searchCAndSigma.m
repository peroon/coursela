%最適なハイパーパラメータを探索する

c_candidates     = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
sigma_candidates = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

% 訓練・バリデーションデータ
load('ex6data3.mat');

bestC = 0;
bestSigma = 0;
bestRecognition = 0;

for i=1:length(c_candidates)
  for j=1:length(sigma_candidates)

    "----------------------------------------------------------"

    C = c_candidates(i);
    sigma = sigma_candidates(j);
    [C, sigma]

    %訓練
    model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));

    %バリデーションデータで評価する
    predictions = svmPredict(model, Xval);

    %識別率
    %recognition = mean(double(predictions ~= yval)) %なんかこれだとうまくいかない
    % 上はエラーを求める式でした（解決）
    recognition = sum(predictions == yval) / length(yval)

    %1番いい識別率がでたとき
    if(recognition >= bestRecognition)
      "best & override!"
      bestRecognition = recognition;
      bestC = C;
      bestSigma = sigma;
    end
  end
end

bestRecognition
bestC
bestSigma
