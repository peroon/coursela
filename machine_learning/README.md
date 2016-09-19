# Machine Learning

* [course page](https://www.coursera.org/learn/machine-learning/home/welcome)

## Lesson notes

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


## spent days

* 45 days

## I learned ...


### How to devide data

* Training/Validation/Test data

### Basic flow of machine learning

* define a cost function
* differentiate it by parameters
* optimize with gradient descent

### How to try and error

* judge whetehr high bias or high variance
	* from test error graph(learning curve)
* if high bias
	* under fitting
	* increase feature vector dimension
* if high variance
	* over fitting
	* increase learning data
	* regularization

### Algorithms

* Learinng
	* Supervised
		* Linear regression
		* Logistic regression
		* Neural network
		* Support vector machine
		* Collaborative filtering
		* Online learning 
	* Unsupervised
		* k-means
		* Principal Component Analysis

* Optimization
	* general
		* Gradient descent
		* Stochastic gradient descent
		* Mini-Batch Gradient Descent
	* NN
		* Backpropagation
		* Random initialization
	
### Other techniques

* Feature scaling
* Vectorization (for fast computing)
* Regularization
* Feature mapping (increase feature dimension)
* Multiple classification (1-vs-all)
* Elbow method [week8](https://github.com/peroon/coursela/tree/master/machine_learning/week8)
* maximum likelihood estimation
* multivariate gaussian distribution
* Map-reduce
* Synthesizing data by distortion
* ceiling analysys

### Application examples

* Linear Regression
	* Model fitting
* Logistic Regression
	* Classification
		* Spam detection
* Neural Network
	* character recognition (MNIST)
	* Autonomous driving
* Support Vector Machine
	* Spam filter
		* spma word list up
* k-means
	* market segmentation
	* data compression
* PCA
	* visualizing
* Gaussian Distribution
	* Anomaly detection
		* fraud
		* monitoring computers
* Collaborative Filtering
	* Recommender system [week9](https://github.com/peroon/coursela/tree/master/machine_learning/week9)
	
### How to evaluate if biased data

* e.g. 
	* Cancer
* precision
* recall 
* F1 score

### Mistakes

* try many algorithms and parameters and got minimum test error, but it is just optimized to the data and it is not applied generally