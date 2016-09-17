# Machine Learning

* https://www.coursera.org/learn/machine-learning/home/welcome

## 各レッスンのノート

* [week1](https://github.com/peroon/coursela/tree/master/machine_learning/week1)
* [week2](https://github.com/peroon/coursela/tree/master/machine_learning/week2)
* [week3](https://github.com/peroon/coursela/tree/master/machine_learning/week3)
* [week4](https://github.com/peroon/coursela/tree/master/machine_learning/week4)
* [week5](https://github.com/peroon/coursela/tree/master/machine_learning/week5)
* [week6](https://github.com/peroon/coursela/tree/master/machine_learning/week6)
* [week7](https://github.com/peroon/coursela/tree/master/machine_learning/week7)
* [week8](https://github.com/peroon/coursela/tree/master/machine_learning/week8)
* [week9](https://github.com/peroon/coursela/tree/master/machine_learning/week9)
* [week10](https://github.com/peroon/coursela/tree/master/machine_learning/week10)
* [week11](https://github.com/peroon/coursela/tree/master/machine_learning/week11)


## 45日ほどで修了して学んだこと

### データの分け方

* 訓練/バリデーション/テストデータ

### 機械学習の基本の流れ

* コスト関数の定義
* コスト関数をパラメータで微分
* Gradient Descentで最適化

### 試行錯誤の方法

* high bias, high varianceのどちらの状態かをテストエラーのグラフ(Learning curve)から判定
* high bias
	* under fitting
	* 特徴ベクトルの次元を増やす
* high variance
	* over fitting
	* 学習データの数を増やす
	* 正規化項

### 学んだアルゴリズム

* 学習アルゴリズム
	* Supervised
		* Linear regression
		* Logistic regression
		* Neural network
		* Support vector machine
		* Collaborative filtering
	* Unsupervised
		* k-means


* 最適化アルゴリズム
	* 一般的に使える
		* Gradient descent
		* Stochastic gradient descent
	* NNに使える
		* Backpropagation
	

### 学習内容の具体例

* Linear Regressionを用いた
	* 
* Logistic Regression
	* TODO
* ニューラルネットワーク
	* 手書き文字認識
* サポートベクターマシン
	* スパムフィルター
		* スパムと判定されやすいワード一覧の表示

### 正誤の割合が異なるときの評価方法

* e.g. ガン患者判定
* precision
* recall 
* F1 score

### 陥りやすいミス
* いろいろなアルゴリズム・パラメータを試して、この手法・パラメータで最高の認識率を出したとしても、それはデータに最適化しただけ