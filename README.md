# Text Driven Stock Market Prediction Based on Machine Learning Methods

In this study, we attempt to investigate how to extract useful information from news headlines and
utilize it to predict financial market. We propose four models namely ARIMA, SVM, RNN and LSTM
to predict firm-level stock price trend (whether the specific stock price will be up or down in the next
day) using information from stock price or news headlines. Specifically, we first employ a time series
model, ARIMA model, to predict price trend of seven technology firms, which are Apple, Amazon,
Facebook, Google, Microsoft, IBM, and Tesla, using only stock price data. Meanwhile, we also adopt
three machine learning methods namely SVM, RNN and LSTM to conduct the price trend prediction
task for the same seven firms, using only news headlines. According to our experimental results, we
uncover four major findings: firstly, three machine learning methods which only use news headlines
data all outperform the conventional method ARIMA model which only uses stock price data,
indicating that news headlines can help predict financial market; secondly, the sentiment-based method
SVM outperforms the other three none-sentiment-based models in predicating stock price trend,
indicating that sentiment is one factor that can be used to predict price trend; thirdly, different news
show different predictive power, indicating that only news headlines that are relevant to the firm can
makes significant difference in financial market trend prediction ; fourthly, time lags exist in stock
price trend forecasting when using news headlines and different firms show different days of time lags,
indicating that different investor groups exist in different firms and special news released during that
time period.

# Acknowledgement

We highly refer to another repository [EmielStoelinga/CCMLWI](https://github.com/EmielStoelinga/CCMLWI)

# Authors

WEI, HU; Yidi, LIU; Dongliang, SHENG; Qiping, WANG; Kai, YANG
