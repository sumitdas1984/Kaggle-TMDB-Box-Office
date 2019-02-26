## Kaggle TMDB Box Office Prediction
#### Download Dataset
The dataset can be downloaded using the [Kaggle API](https://github.com/Kaggle/kaggle-api). To install Kaggle API, use the following command line: `pip install --user kaggle`. After that, create the API token on `https://www.kaggle.com/<username>/account`. Copy `kaggle.json` to `~/.kaggle/kaggle.json`. Finally, execute the following command:
```console
sh scripts/download_dataset.sh
```

#### Exploratory Data Analysis
Exploratory data analysis for:
* Missing values
* Distribution for numeric features
* Correlation matrix for numeric features
* Time series data analysis
* Median revenue for `original_language`, `status`, `genres`, `production_companies` and `production_countries`.

Please see: [notebooks](notebooks/exploratory_data_analysis.ipynb)

#### Feature Engineering
Feature engineering for:
* Data filling (`revenue`, `budget`, `runtime` and `release_date`)
* Covert release_date into ~~(cyclic ordinal features)~~ numeric encoding features
* One-hot encoding for `original_language`, `genres`, `production_companies`, `production_countries` and `spoken_languages`
* Numeric feature normalization using `MinMaxScaler`
* Feature generation (`has_budget`, `has_collection`, `has_homepage`, `has_tagline`, `num_of_Keywords`, `num_of_cast`, `num_of_crew`)

Please see: [notebooks](notebooks/feature_engineering.ipynb)

#### Prediction Model
Prediction model based on the following algorithms (optimized using [Hyperopt](https://github.com/hyperopt/hyperopt)):
* [Random Forest Regression](https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestRegressor.html)

Please see: [notebooks](notebooks/prediction_model.ipynb)

#### Submission
| Number | Rank |             Date |   Score |
| ------:| ----:| ----------------:| -------:|
|    001 |   89 | 2019/02/25 19:17 | 2.05429 |
