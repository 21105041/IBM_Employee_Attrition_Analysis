SELECT *
FROM employee_attrition1;

-- Overall Attrition Rate --------------------------------------------------------------------------------------------
SELECT 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1;

-- Attrition by Job Role ---------------------------------------------------------------------------------------------
SELECT JobRole,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY JobRole
ORDER BY attrition_rate_percent DESC;

-- Attrition by Department ---------------------------------------------------------------------------------------------
SELECT Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY Department
ORDER BY attrition_rate_percent DESC;

-- Attrition by Gender ---------------------------------------------------------------------------------------------
SELECT Gender,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY Gender
ORDER BY attrition_rate_percent DESC;


-- Attrition by Job Satisfaction (Low-1, Medium-2, High-3, Very-High-4) ------------------------------------------------
SELECT JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY JobSatisfaction
ORDER BY attrition_rate_percent DESC;

-- Attrition by Environment Satisfaction (Low-1, Medium-2, High-3, Very-High-4) ----------------------------------------
SELECT EnvironmentSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY EnvironmentSatisfaction
ORDER BY attrition_rate_percent DESC;

-- Attrition by OverTime ---------------------------------------------------------------------------------------------
SELECT OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY OverTime
ORDER BY attrition_rate_percent DESC;


-- Attrition by Average Income ---------------------------------------------------------------------------------
SELECT Attrition,
    ROUND(AVG(MonthlyIncome), 2) AS avg_income
FROM employee_attrition1
GROUP BY Attrition;


-- Grouping the 'Age' Column and checking attrition by 'Age_Group' -----------------------------------------------
SELECT Age
FROM employee_attrition1;

SELECT 
	CASE 
		WHEN Age < 25 THEN "Young Professionals" 
        WHEN Age BETWEEN 25 AND 34 THEN "Early Career"
        WHEN Age BETWEEN 35 AND 44 THEN "Mid Career"
        WHEN Age BETWEEN 45 AND 54 THEN "Late Career"
        ELSE "Senior Professionals"
	END as Age_Group,
COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY Age_Group
ORDER BY attrition_rate_percent DESC;


-- Attrition by 'Distance From Home' ---------------------------------------------------------------------------------------------
SELECT DistanceFromHome
FROM employee_attrition1;

SELECT 
    CASE
        WHEN DistanceFromHome BETWEEN 0 AND 5 THEN 'Very Close'
        WHEN DistanceFromHome BETWEEN 6 AND 10 THEN 'Close'
        WHEN DistanceFromHome BETWEEN 11 AND 20 THEN 'Moderate Distance'
        WHEN DistanceFromHome BETWEEN 21 AND 30 THEN 'Far'
        ELSE 'Very Far'
    END AS DistanceGroup,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY DistanceGroup
ORDER BY attrition_rate_percent DESC;


-- Attrition by 'Years Since Last Promotion' -----------------------------------------------------------------------
SELECT DISTINCT YearsSinceLastPromotion
FROM employee_attrition1;

SELECT 
	CASE 
		WHEN YearsSinceLastPromotion = 0 THEN "Recently Promoted"
        WHEN YearsSinceLastPromotion BETWEEN 1 AND 3 THEN "Waiting Short-Term"
        WHEN YearsSinceLastPromotion BETWEEN 4 AND 6  THEN "Delayed promotion"
        ELSE "Long Overdue"
	END AS PromotionStatus,
    
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY PromotionStatus
ORDER BY attrition_rate_percent DESC;


-- Attrition by 'Business Travel' ---------------------------------------------------------------------------------------------
SELECT BusinessTravel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY BusinessTravel
ORDER BY attrition_rate_percent DESC;

-- Attrition by 'Marital Status' ---------------------------------------------------------------------------------------------
SELECT MaritalStatus,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY MaritalStatus
ORDER BY attrition_rate_percent DESC;


-- Attrition by Relationship Satisfaction (low-1, medium-2, high-3, very high-4) -------------------------------------------------
SELECT RelationshipSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY RelationshipSatisfaction
ORDER BY attrition_rate_percent DESC;


-- Attrition by Work Life Balance (low-1, medium-2, high-3, very high-4) ---------------------------------------------------------
SELECT WorkLifeBalance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY WorkLifeBalance
ORDER BY attrition_rate_percent DESC;


-- Attrition based on 'Job Involvement' (low-1, medium-2, high-3, very high-4) ------------------------------------------------------
SELECT JobInvolvement,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY JobInvolvement
ORDER BY attrition_rate_percent DESC;


-- ******************************* MULTI-DIMENSIONAL ATTRITION PATTERN **********************************

-- Attriton based on ('Department' and 'Gender')-------------------------------------------------------------------

SELECT Department, Gender,
	COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY Department, Gender
ORDER BY attrition_rate_percent DESC;


-- Attriton based on ('Work Life Balance' and 'Job Role')-------------------------------------------------------------------
SELECT JobRole, WorkLifeBalance,
	COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY JobRole, WorkLifeBalance
ORDER BY attrition_rate_percent DESC;


-- Average Monthly Income based on Attrition ----------------------------------------------------------------------------------------
SELECT Attrition,
    COUNT(*) AS total_employees,
    ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income
FROM employee_attrition1
GROUP BY Attrition
ORDER BY avg_monthly_income DESC;


-- Attrition based on 'Job Tenure'------------------------------------------------------------------------------------------
SELECT 
	CASE
		WHEN YearsAtCompany < 1 THEN "Less than 1 year"
        WHEN YearsAtCompany BETWEEN 1 AND 3 THEN "1-3 Years"
        WHEN YearsAtCompany BETWEEN 4 AND 6 THEN "4-6 Years"
        ELSE "7+ Years"
        END AS TenureGroup,
        
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY TenureGroup
ORDER BY attrition_rate_percent DESC;


-- Attrition based on 'Marital Status' and 'Gender'-------------------------------------------------------------------------
SELECT MaritalStatus, Gender,
	COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate_percent
FROM employee_attrition1
GROUP BY MaritalStatus, Gender
ORDER BY attrition_rate_percent DESC;