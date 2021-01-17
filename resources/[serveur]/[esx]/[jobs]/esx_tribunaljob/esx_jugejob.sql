USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_juge','Juge',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_juge','Juge',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('juge','Juge')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('juge',0,'Jurés','jurés',24,'{}','{}'),
  ('juge',1,'Secretaire','secretaire',36,'{}','{}'),
  ('juge',2,'Procureure','procureure',48,'{}','{}'),
  ('juge',3,'Juge','juge',0,'{}','{}')
;
