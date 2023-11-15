### Marketing Analytics Solution Using Fivetran and dbt

1. Firstly I ingested Salesforce and Marketo data present in Google sheets to Bigquery using Fivetran connectors as well as Destinations.
2. I used dbt for the transformation, test and documentation required for the analysis. I created this repository to maintain data models for the analysis and also grant Fivetran access so that we can schedule our pipelines.
3. Finally, I can define upstream Fivetran connectors as source, set up dbt to transform, clean and aggregate this data and schedule pipeline run in Fivetran against our Bigquery destinations.

Later on, we can connect BI tools with Bigquery destinations to visualize our metrics.
