# Machine Learing Identification of Triple Negative Breast Cancer 

**AWS Sagemaker Machine Learning Engineering Project in Healthcare**

David Chen, Ph.D.

## Primary Objective

To build a binary classifier that identifies breast cancers that are "triple negative", which do not express ER, PR and HER2 hormone receptors. This cancer subtype is of interest because they are aggressive and do not respond to hormonal therapies that are otherwise effective in treating cancers.

## Software & Libraries

This project focuses on **AWS Sagemaker**, featuring:

* scikit-learn Gaussian SVM: benchmark model
* Sagemker XGBooast with hyperparameter tuning: target model

Libraries for supporting the project includes:

* sagemaker &amp; boto3 for AWS S3 file access, Notebook instance/sessions
* scikit-learn (Model Selection, Preprocessing modules, Metrics, Unsupervised Learning)
* pandas for data wrangling &amp; management
* matplotlib, numpy, scipy.stats

## Data Source

All data used in this project are publicly and freely available, downloaded from [cBioPortal](https://www.cbioportal.org/).

![data-repo](assets/figure/cbio_data_overview.png)

Relevant attributes: 

```sql
/* Pseudocode */
SELECT patient_id, sample_id, fga, age, sex, ethnicity, race, sample_type, er_ihc, her2_ihc, pr_ihc
FROM clinical_data
WHERE (sex='female' AND sample_type='Primary')
ORDER BY fga DESC;
```

Triple negative status is determined by:

```sql
ALTER TABLE clinical_data
ADD Label AS (CASE WHEN er_ihc='Negative', her2_ihc='Negative', pr_ihc='Negative' THEN 1 ELSE 0 END);
```

## File Structure

`proposal/`: LaTex document for the proposal

`src/`: All code in Python, including Jupyter Notebooks and Python Scripts. All code are written within the AWS Sagemaker Notebook Instance. Each script or file is a copy exported from Sagemaker.

`report/`: LaTex document for report

`assets/`: Git-ignored. Consists of graphics/figures and raw datasets.


## References

_Idea_

* Lehmann et al. J Clin. Invest. (2011)
* Wu &amp; Hicks. J Personalized Med. (2021)

_Data_: Cancer Genome Atlas Network (2012). Nature

_Approach_

* AWS Sagemaker: documentations &amp; examples
* Udacity Machine Learning Engineer Nanodegree Program
