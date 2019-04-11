# Wine Classification
Conducted by Elijah Raffo, Jianzhou Li, Xunyi Jiang.

## Overview:
Using python, developed machine learning models to classify and predict the quality of a wine (up to an 85% accuracy). Then presented on the findings of these models, and how these models impact the industrial wine making process.

## Guide:

Our [dataset](github.com/eliraffo/eliraffo.github.io/blob/master/OBA410/Wine_Data.csv) is comprised of data on white and red wine. Columns such as sulfur, residual sugars, etc. can be used to describe the characteristics of the wine. The 'Y' column of the data is the quality score which is on a scale from 1 to 10, and is the defined by how good the wine tastes.

Because our dataset was heavily comprised of 5 and 6 quality ratings we decided to develop classification models for the wine. Wines 5 and below were considered bad, and wines 6 and above were classified as good. Our [python code](github.com/eliraffo/eliraffo.github.io/blob/master/OBA410/Wine_Model.ipynb) tested machine learning models on three groups of data: the complete dataset, a dataset which only comprised white wine, and a dataset which only comprised red wine.

A large part of this project was testing machine learning models, such as K-Nearest Neighbor, Logistic Regression, Linear SVM, SVM, Decision Tree, and Random Forest. Correctly training, testing, and understanding the math behind models is important in assessing accuracy; however, we also tried to understand how these models could affect the industrial wine making process. The best model for creating impact was the decision tree because a company could use additives to adjust a batch of wine to make a bad wine taste good. 

Our [presentation](github.com/eliraffo/eliraffo.github.io/blob/master/OBA410/OBA410Wine_Presentation.pptx) and [paper](github.com/eliraffo/eliraffo.github.io/blob/master/OBA410/OBA410Wine_Paper.pdf) describe in better detail the findings of the our project. 

Please navigate to the [Homepage](github.com/eliraffo/eliraffo.github.io/tree/master/OBA410) if you would like to see the whole project.
