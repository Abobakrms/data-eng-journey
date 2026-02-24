Select U.unique_id, E.name
From Employees as E
Left join EmployeeUNI as U
on E.id = U.id