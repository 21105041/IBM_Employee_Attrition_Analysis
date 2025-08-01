# 🧠 IBM_Employee_Attrition_Analysis

## 👩‍💼 Project Overview

Employee attrition is not just a number—it reflects deeper patterns in workplace satisfaction, management, and role alignment. This project goes beyond prediction to **understand why employees leave**, using real HR data and a combination of SQL exploration, visual analytics, and machine learning.

> "Attrition isn’t random — it’s pattern-driven."


## 🎯 Goals & Objectives

- Analyze attrition trends across job roles, age groups, departments, etc.
- Identify underlying factors influencing attrition (work-life balance, income, promotion delays, etc.).
- Build predictive models to flag at-risk employees before they exit.
- Empower HR teams with actionable insights and retention strategies.


## 🧩 Dataset

- **Source**: IBM HR Analytics Employee Attrition Dataset ([Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset))
- **Records**: 1,470 employee entries
- **Features**: Demographics, job roles, income, tenure, satisfaction levels, overtime, and more
- **Target Variable**: `Attrition` (Yes/No)


## 🛠 Tools & Technologies

| Tool          | Purpose                                  |
|---------------|------------------------------------------|
| **SQL**       | Data cleaning, filtering, aggregation    |
| **Python**    | Data analysis, visualization, ML modeling|
| **Libraries** | `pandas`, `numpy`, `matplotlib`, `seaborn`, `sklearn`, `xgboost`, `imblearn`, `joblib` |
| **PowerPoint**| Presenting insights & storytelling       |


## 🔍 Key Insights from SQL Analysis

- 🔺 **Overtime employees** had nearly **3× higher attrition**.
- 👩‍🔬 **Sales Reps** and **Lab Technicians** faced the **highest churn**.
- 🧑‍🎓 **Employees under 30** were most likely to leave.
- ⚖️ **Work-Life Balance** scores of 1–2 had high attrition across roles.
- 👩‍💼 **Females in HR** had up to **30% attrition**—highest by department and gender.


## 📊 Machine Learning Approach

- Built classification models to predict employee attrition:
  - **Logistic Regression**
  - **Random Forest**
  - **XGBoost**
- Final model: **Soft Voting Ensemble** combining XGBoost + Random Forest

### ✅ Model Evaluation

| Metric     | Description |
|------------|-------------|
| **Precision** | Out of all employees predicted to leave, how many actually did? |
| **Recall**    | Out of all employees who actually left, how many did we predict? |
| **F1-Score**  | Harmonic balance of Precision & Recall |
| **ROC-AUC**   | Measures model's ability to distinguish between stayers and leavers |


## 💡 Business Recommendations

- Limit overtime and restructure shifts in high-risk roles.
- Improve onboarding support for employees in their **first year**.
- Launch **retention plans** for newly promoted employees.
- Personalize engagement strategies for **single employees**.
- Empower managers—*tenure with manager* is a key predictor.
- Integrate the ML model with **HR systems** to automate retention alerts.


## 📎 References

- **Dataset**: [Kaggle - IBM HR Analytics Dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- **Tools**: SQL, Python, Jupyter, PowerPoint
- **Libraries**: `sklearn`, `xgboost`, `seaborn`, `joblib`, etc.


## 📌 How to Use

1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/Employee-Attrition-Analysis.git

