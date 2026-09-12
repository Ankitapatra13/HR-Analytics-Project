# HR-Analytics-Project
This is an **end to end HR Analytics project**.

## 1. Project Overview

This project analyzes **17414** employee’s performance over **9** departments across various features . The goal is to **get insights** to recognize and **improve lag** in the workflow and **reward exceptional performances** for the good work to be continued. 

---

## 2. Dataset Summary 

*	**Rows** : 17414
*	**Columns** : 15
*	**Key Features** : 
1.	**Employee demographics** - Education , Gender , Age 
2.	**Employee details** – Employee ID , Department , Region 
3.	**Employee record** – Recruitment Channel , No. Of Trainings , Length Of Service 
4.	**Employee achievements** – Rating , KPIs Met , Awards Won , Average Training Score

---

## 3.Exploratory Data Analysis Using Python

*	**Data Loading** – Imported the data from **Kaggle** to **Jupyter Notebook** as a csv file .
*	**Data Exploration** – Used **df.head()** to check first 5 rows , used **df.info()** to see the detailed description , 
                           used **df.isnull().sum()** to check if empty values are present.
*	**Filling Null Values** - Filled the **null** values of **"education"** feature with **"Unknown"**. 
                              Filled the **null** values of **"previous_year_rating"** with the **mode** vale within their department.
*	**Duplicate Check** – Checked for duplicates and **dropped** the **duplicates** using **df.drop_duplicates()**.
*	**Data Mapping** – Within gender feature the **“m”** is mapped as **“male”** and **“f”** is mapped as **“female”**.
*	**Feature Engineering** – 
1.	Created a new feature called **age group** from age feature by converting the discrete ages into **labelled age brackets**. 
2.	Created a new feature called **work experience** from the feature length of service by putting 
    discrete numbers into **bins** with **bin edges** and **labels**.
*	**Renaming Existing Feature** – **Renamed** "KPIs_met_more_than_80" to **lowercase and only characters** 
                                    feature name - “kpis_met_more_than_eighty”.
*	**Data Frame To csv** – Lastly, converted the cleaned **data frame to csv file** .

---

![dataset loading](images/dataset%20load.jpg)

![first five rows](images/df%20head.jpg)

![details of dataset](images/df%20info.jpg)

![null check](images/null%20check.jpg)

![education null filling](images/fill%20null%20places.jpg)

![rating null filling](images/fill%20null%20ratings.jpg)

![drop duplicates](images/drop%20duplicates.jpg)

![gender mapping](images/gender%20mapping.jpg)

![new feature age group](images/age%20group.jpg)

![new feature work experience](images/work%20experience.jpg)

![feature rename](images/rename%20feature%20.jpg)

![dataframe to csv](images/df%20to%20csv.jpg)

---

## 4. Data Analysis Using MySQL

1. **Recognize Excellent Performers** – Identified the employees who outperformed in their department and calculated their  average tenure years and their average training score.

![query 1 output](images/query%201.jpg)

2. **Highest Performers Hiring Recruitment Channel** - Evaluated which recruitment channel yields the highest-performing hires based on their performance KPIs and training scores.

![query 2 output](images/query%202.jpg)

3. **Gender Representation & Award Distribution** - Analyzed gender representation across departments and compared award distribution within each department.

![query 3 output](images/query%203.jpg)

4. **Trainings Impact On Rating & KPI** - Determined whether taking more trainings leads to higher performance ratings and KPI achievements.

![query 4 output](images/query%204.jpg)

5. **Impact Of Education On Service Tenure , Training Score & Awards Won** - Examined how educational qualification correlates with service tenure, training score, and awards won.

![query 5 output](images/query%205.jpg)

6. **Struggling Employees Department & Region Wise** - Identified departments or regions where employees are struggling (low ratings and low KPI completion).

![query 6 output](images/query%206.jpg)

7. **Age Groups & Experience Levels Within Each Department** - Profiled the distribution of employees across age groups and experience levels within each department.

![query 7 output](images/query%207.jpg)

8. **Performance Tiers For Employees** – Classified the employees into performance tiers using a custom scoring rubric.

![query 8 output](images/query%208.jpg)

9. **Ranking Regions** - Ranked regions within each department by the proportion of top performers (KPI > 80%).

![query 9 output](images/query%209.jpg)

10. **Core HR Metrics Summary** - A summary query to generate core HR metrics for an executive dashboard.

![query 10 output](images/query%2010.jpg)

---

## HR Analytics Dashboard In Power BI 

![HR Analytics Dashboard](images/HR%20Analytics%20Dashboard.jpg)

---

## 6. Insights

1. **Number of trainings** increases the average **training score**.
2. More than half of the workforce is **male** .
3. Recruitment channel through **referral** yields **maximum KPIs** meeting employees.
4. In less than **ten regions** , there is a **dip** in average **KPI** among  –
   - Entry Level (0 to 2 yrs)  Young Adults.
   - Executive Level (12+ yrs) Adults.
   - Mid Level (3 to 7 yrs) Young Adults.
   - Senior Level (7 to 12 yrs) Middle Aged.

---

## 7. Recommendations 

1.	More **capable female candidates** should be **hired** for a better balance in the workforce.
2.	**Entry Level** and **Mid Level young adults** should be working more attentively 
    towards meeting their goal to **improve** the **average KPI**.
3.	**Referral recruitment** should be **encouraged** more as it hires the best candidates.
4.	**Executive Level adults** need to **improve** their **average KPI** by being more active towards their goal.






