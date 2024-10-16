# Operation-analytics-and-investigating-metric-spike

Description: 

This project focuses on Operational Analytics to analyse and improve a 
company’s end-to-end operations. The main objective is to investigate metric
spikes, such as sudden changes in user engagement, sales, or other key 
performance indicators. As a Lead Data Analyst, the goal is to derive valuable 
insights from various datasets by explaining fluctuations in metrics. The focus is 
to use data analysis to answer specific questions posed by various departments 
within the company. 


Approach: 

I first explored the dataset to understand its structure and the key metrics related 
to business operations. I used SQL for data querying, focusing on specific 
periods where it should be checked and analyse. Using time-based aggregation 
(weekly, monthly) and filters, I drilled down into the data to pinpoint the causes 
of spikes, such as changes in user behavior, marketing campaigns, or product 
issues. 


Tech-Stack used: 

 MySQL Workbench: For running SQL queries and analyzing the data. 
 MySQL Version 8.0: For database management, enabling extraction, 
aggregation, and filtering of large data sets to perform detailed analysis 
on operational metrics. 
 Excel: the datasets were provided in the form of csv file and I imported 
the data into MySQL workbench. 


Key Insights and Observations:

case study 1: job data

Jobs Reviewed Over Time:

The query highlighted job throughput trends, showing the number of jobs reviewed per hour over a specific period. Peaks in activity may indicate operational efficiency, while dips may point to periods of reduced productivity or system downtime.
![Screenshot (103)](https://github.com/user-attachments/assets/28913feb-7e08-461d-8318-2e0d38ba8756)


Throughput Analysis (7-Day Rolling Average vs. Daily Metrics):

The 7-day rolling average smooths out daily fluctuations, offering a clearer view of long-term trends. This helps avoid misinterpretations caused by temporary spikes or drops, making it preferable for understanding overall performance.

![Screenshot (104)](https://github.com/user-attachments/assets/4b372cae-9fa4-4679-94cc-acaa02f17d52)

![Screenshot (105)](https://github.com/user-attachments/assets/4f0602a8-1789-407e-afd4-57e0519306ee)


Language Share Analysis:

Language distribution in job data was uneven, with certain languages dominating the dataset. This information can guide content localization strategies or resource allocation for multilingual support.

![Screenshot (115)](https://github.com/user-attachments/assets/4c4d39c8-5d56-422a-81fa-a2875599b391)


Duplicate Row Detection:

Detecting duplicate entries revealed data quality issues. Duplicate rows can inflate metrics or distort analyses, underscoring the importance of maintaining clean and consistent datasets.

![Screenshot (107)](https://github.com/user-attachments/assets/20215519-44a8-468d-8c27-f4f2b34e21a0)

case study 2:Investigating Metric Spike

Weekly User Engagement:

Weekly engagement analysis showed which weeks had higher or lower user activity, helping to identify patterns in user behavior. Spikes in activity might be tied to product launches, marketing efforts, or seasonal trends.

![Screenshot (108)](https://github.com/user-attachments/assets/77300745-6f79-49a4-9a39-b66e56831a39)


User Growth Analysis:

Growth analysis over time indicated steady user acquisition. The cumulative user count provided insight into product adoption rates and helped project future growth.
![Screenshot (109)](https://github.com/user-attachments/assets/667d4f25-5ea0-48da-b758-0a6d7cfc951d)


Weekly Retention Analysis:

Retention analysis by cohort highlighted user retention rates over time. High retention in specific weeks suggests successful onboarding or engagement strategies, while lower rates could indicate potential issues with product stickiness.

![Screenshot (110)](https://github.com/user-attachments/assets/77c3d290-34a5-4b58-aa77-51f8adb1a9f0)


Device Engagement:

Engagement per device revealed which devices were most used by active users. This can inform decisions on where to focus optimization efforts or marketing strategies (e.g., mobile vs. desktop).

![Screenshot (112)](https://github.com/user-attachments/assets/bd95c0ed-0825-4aa7-a3fa-7dad6a5b07d0)


Email Engagement:

Email engagement analysis showed varying levels of interaction with different types of email actions (e.g., opens, clicks). This insight can guide email marketing campaigns, with an emphasis on actions that drive higher engagement rates.

![Screenshot (113)](https://github.com/user-attachments/assets/da0bc8ce-7f8b-4d1b-ba73-cbaae4e7f50f)


Overall Inferences:

Data Quality and Cleaning: Identifying duplicate rows highlights the need for better data governance and cleaning practices.

Engagement and Growth: Patterns of user activity and growth can directly inform strategies related to product engagement, retention, and market penetration.

Strategic Focus Areas: Focusing on high-engagement devices or languages can optimize user experiences and drive better outcomes for both user satisfaction and company objectives.
