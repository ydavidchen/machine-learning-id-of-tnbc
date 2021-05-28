# Machine Learing Identification of Triple Negative Breast Cancer | Project in Healthcare

An AWS Sagemaker-based ML journey | David Chen, Ph.D.

## Goals

To build a binary classifier that identifies breast cancer samples that are "triple negative" (which are the most aggressive and difficult to treat).

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

`src/`: All code in Python, including Jupyter Notebooks and Python Scripts

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
