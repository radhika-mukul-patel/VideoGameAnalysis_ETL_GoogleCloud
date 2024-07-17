# VideoGameAnalysis_ETL_GoogleCloud

## Objective: Market analysis
#### A new company wants to enter the global video game market by launching their first video game. They must analyze the following:
- Competitive Landscape: Which publishers, platforms, genres have the biggest market share?
- Profitability: What games, genres, regions are the most lucrative?

## Building the Data Pipeline

This is the visual representation of the ETL batch data pipeline used in this project
![image](https://github.com/user-attachments/assets/9aabacaf-3dce-42a7-b5b3-583103dec76b)
### 1.  Data Source
The dataset used for this purpose has been uploaded within this repository and was found on Kaggle: https://www.kaggle.com/code/upadorprofzs/eda-video-game-sales/input  

### 2. Data Extraction: Python Notebook to Google Cloud
The Jupyter notebook used to extract the data from a csv file to Google Cloud has been uploaded within this repository

### 3. Data Transformation and Loading: Cloud Data Fusion
**Transformation**: Cloud Data Fusion is Google's nocode data transformation tool. Since the dataset did not require intensive transformations, this was chosen over DataFlow. The following data transformations were made:
- Changing datatype of NA_Sales from string to Double
- Removing 'N/A' values from Year
- Removing 'N/A' values from Publisher
  
**Loading**: Created a batch data pipline connecting the Google storage bucket to Cloud data fusion and finally loading it onto BigQuery

![image](https://github.com/user-attachments/assets/596cc0f0-f755-437a-9b38-462c60f377f6)



### 4. Data Querying: BigQuery

Here's an example of Python code:

### 5. Data Visualization: Looker Studio

```python
def greet(name):
    print("Hello, " + name + "!")

greet("World")
