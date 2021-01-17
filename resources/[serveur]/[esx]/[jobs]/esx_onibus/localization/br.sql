USE `essentialmode`;

INSERT INTO `jobs` (name, label) VALUES
	('busdriver', 'Motorista de ônibus')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('busdriver', 0, 'employee', 'Empregado', 500, '{}', '{}')
;
