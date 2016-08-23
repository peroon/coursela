# Week 5 Back Propagation

* このコースの山

### Cost Function and Backpropagation

![](./notation.png)

* L : レイヤー数
* s_l : レイヤーlでのユニット数
* コスト関数はLRの一般化

![](./cost-function.png)

* fminuncに食わせるためには、J, gradが必要。gradはJのi, jで微分
* 量が多すぎる？
* a = activation values
* バックプロパゲーションにおいて、g'がでてきた理由は？
* δ（デルタ）を後ろから計算していく
* そこからJのi, j微分が求まるらしい。直接は微分できないの？
* 証明が必要？

![](./back-propagation.png)

* jってなんだっけ？各レイヤーのノードのindexか j=0はbiasノード用
* i = 1:m

![](./back-propagation2.png)

* 証明できなくてもコードは書けそうだ

### Backpropagation Intuition

![](./forward-propagation.png)

* データごとに、forward propagationしてbackpropagationしてΔに加算する
* シンプル化して直感をつかもう

![](./simple.png)

* δはweighted sumされて後ろから前に求められていく

### よくわからなかった直感的な図

* エラーを前に求めていく方法はわかった

![](./hatena.png)
