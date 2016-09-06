# Week 8 : Unsupervised Learning

* クラスタリング
	* market segmentation
	* text summarization
	* social network analysis
* Principal Component Analysis 主成分分析
	* speed up learning algorithms
	* data visualizing
	
### Unsupervised Learning: Introduction

* Unsupervised learningにはラベルがない
* find some structure

![](./applications.png)

### K-Means Algorithm

* clustering -> coherent subsets
* 1. cluster centroidsを決める
* 2. loop
	* cluster assignment 1番近いcentroidに属する
	* move centroid to mean
* Quizがわからない・・・c_1, c_2が共に3に収束した？？
	* c_iの定義 : i番目のデータが属するクラスタのindex
	* μ_k : 各クラスタの平均
	* これをふまえると、解けた
* どこにも属さないμができたら？
	* 除去する or
	* K個のクラスタが必要なら、ランダム位置に移動する
* 次のレッスンでは、nuts and bolts（基本）を学ぶ

![](./k-means.png)


### Optimization Objective

* TODO