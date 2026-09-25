USE CT5;

CREATE TABLE EMPLOYEES 
(
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(30),
	manager_id INT DEFAULT 1
);

SELECT * FROM EMPLOYEES;

INSERT INTO EMPLOYEES 
VALUES 
(1, 'Amol', NULL),
(2, 'Rahul', 1),
(3, 'Priya', 1),
(4, 'Sneha', 2);


SELECT 
	E.emp_name AS Employee,
	M.emp_name as Manager
FROM EMPLOYEES E
LEFT JOIN EMPLOYEES M
ON E.manager_id = M.emp_id; 