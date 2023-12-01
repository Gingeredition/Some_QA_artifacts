SELECT pr.project_name, ti.titel_name, AVG(po.salary) AS avg_salary
FROM projects pr JOIN positions po ON pr.project_id = po.project_id
JOIN titles ti ON po.title_id = ti.id
WHERE pr.project_name = 'ПУМЧД' AND ti.titel_name = 'qa engineer'
GROUP BY project_name, titel_name;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, titel_name
FROM employee em
JOIN positions po ON em.employee_id = po.employee_id 
jOIN titles ti ON po.title_id = ti.id
GROUP BY first_name, last_name, titel_name
HAVING COUNT (project_id) >1;
