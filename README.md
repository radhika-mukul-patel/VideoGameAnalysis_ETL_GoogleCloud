# VideoGameAnalysis_ETL_GoogleCloud

## Objective: Market analysis
#### A new company wants to enter the global video game market by launching their first video game. Questions to consider:
- Is it even viable to enter the market? 
- What genre and platform must the new video game be compatible with? 
- Which region should the new video game launch in? 

#### They must analyze the following:
- Competitive Landscape: Which publishers, platforms, genres have the biggest market share?
- Profitability: What games, genres, regions are the most lucrative?
- Gaps in the market: Is there a gap in the market that can be captured through creation of a Niche market?

## Data Pipeline: Batch ETL Pipeline in Google Cloud

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

All the queries are uploaded within the repository

Overview of the loaded dataset:
- Total video games-  16291
- Avg Global Sales- $0.54 Million
- Sum of Global Sales - $8811.97 Million
- Year Range - 1980 to 2017 + 2020
- Distinct publishers - 50
- Distinct Platforms - 31
- Distinct Genres - 12

Create *focus_data_view* to focus only on important data to answer the question: (Only 1037 rows)
- Remove rows with year before 2010
- Remove Global Sales under the global sales average

Create *regionrow_view* to analyze the data by region:
- This was done with the use of CTEs
- Remove columns for each separate region
- Use crossjoin to add new rows per region. This increased the size of the dataset by 5 times. Normally this may not be a viable solution, but 5000 rows is still a manageable big dataset and this was required to make appropriate data visualizations
- Use case when to appropriately add each sales value to the corresponding region


### 5. Data Visualization: Looker Studio

## Conclusion

