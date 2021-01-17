INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_fbi','FBI',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_fbi','FBI',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_fbi','FBI',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('fbi','FBI')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('fbi',0,'agent','Agent',20,'{}','{}'),
	('fbi',1,'special','Experienced Agent',40,'{}','{}'),
	('fbi',2,'supervisor','Supervisor',60,'{}','{}'),
	('fbi',3,'assistant','Assistant Director',85,'{}','{}'),
	('fbi',4,'boss','Director',100,'{}','{}')
;
