SELECT *
FROM `employee_attrition`;

DESCRIBE employee_attrition;

CREATE TABLE employee_attrition1
LIKE employee_attrition;

INSERT employee_attrition1
SELECT *
FROM employee_attrition;

SELECT *
FROM employee_attrition1;

-- Dropping Unnecessary columns
ALTER TABLE employee_attrition1
DROP COLUMN EmployeeCount,
DROP COLUMN Over18,
DROP COLUMN StandardHours,
DROP COLUMN DailyRate,
DROP COLUMN MonthlyRate,
DROP COLUMN HourlyRate;

SELECT *
FROM employee_attrition1;


