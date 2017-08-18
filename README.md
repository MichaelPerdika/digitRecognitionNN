<h1> Digit Recognition using Neural Network </h1>
This program trains a Neural Network capable of recognizing hand written digits.
It was developed for one of my student projects and the goal was to create a serial program in c++ (current version) to recognize the digits and later on to develop a parallel program that trains the network using one or more GPGPUs (written in CUDA). Ultimately the parallel code was running in a fraction of time of the serial one.

<h2> Synopsis </h2>
This repository only contains the serial version which served as a benchmark for the CUDA version. The CUDA
code may or may not be uploaded in the future.
The program is not optimal regarding design and performance, as it was in my early years of development. It is not my immediate interest to optimize it, maybe in the future.
However, I will maintain this repository because it is the first serious programming project I developed as a student and because it actually gives good results.

<h2> data set </h2>
All the necessary data for the training and testing set of the Neural Network was downloaded from the <a href="http://yann.lecun.com/exdb/mnist/">MNIST</a> database.
It consists of 60.000 sample images and their respective labels for the training and 10.000 samples for the testing set. Each image shows a hand-written digit ranging from 0-9.

<h2> Result </h2>
The program with the current configuration for the training of the network will run in around 100 seconds using a modern computer.  
The network is capable of correctly predicting more than 90% even on unknown data (image samples that were not used during training phase) when training with more than 20000 images.

<h2> How to use it </h2>
A simple make file has been used here to simply compile the program. The user needs to navigate to the root of the project
and simply run 
```make``` 
An executable file named main.exe will appear and then the user must run 
```./main.exe train_images train_labels```
sample train images and labels are located in the data file. This should work:
```./main.exe data/train-images.idx3-ubyte data/train-labels.idx1-ubyte```
