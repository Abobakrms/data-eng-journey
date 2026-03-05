Select project_id , Round(AVG(experience_years*1.0),2) As average_years 
From Project AS p
Left Join Employee AS e
ON p.employee_id = e.employee_id
Group by project_id