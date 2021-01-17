USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_banquier','Banque',1),
	('bank_savings','Livret Bleu',0)
;

INSERT INTO `jobs` (name, label) VALUES
	('banquier','Banquier')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('banquier',0,'advisor','Stagiaire',1500,'{}','{}'),
	('banquier',1,'banquier','Garde Du Corps',1750,'{}','{}'),
	('banquier',2,'business_banquier',"Banquier",2000,'{}','{}'),
	('banquier',3,'trader','Trader',2250,'{}','{}'),
	('banquier',4,'boss','Patron',3000,'{}','{}')
;

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('society_banquier', 'Banque', 1),
('society_banquier_reserve', 'Banque (réserve)', 1);

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_banquier', 'Banque', 1)
;

INSERT INTO `items` (`name`, `label`) VALUES  
    ('bil', 'Sac de billet')
;
