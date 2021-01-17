INSERT INTO `addon_account` (name, label, shared)
VALUES ('society_transistep', 'Transistep', 1)
;

INSERT INTO `addon_inventory` (name, label, shared)
VALUES ('society_transistep', 'Transistep', 1), ('society_transistep_warehouse', 'Transistep Dépôt', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
('society_transistep', 'Transistep', 1)
;

INSERT INTO `jobs` (name, label)
VALUES ('transistep', 'Transistep')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female)
VALUES ('transistep', 0, 'recrue', 'Recrue', 0, '{}', '{}'),
       ('transistep', 1, 'transporter', 'Transporteur', 0, '{}', '{}'),
       ('transistep', 2, 'boss', 'Boss', 0, '{}', '{}')
;

CREATE TABLE `convoy_list`
(
    id         int(11) NOT NULL
);

INSERT INTO `convoy_list` (id)
VALUES (1),(2),(3),(4),(5),(6),(7),(8); -- add as many as you want

CREATE TABLE `convoy_registered_list`
(
    `convoy_id`         int(11) NOT NULL,
    `identifier`        varchar(60) NOT NULL,
    `is_trailer_stored` boolean,
    `is_paid`           boolean,

    PRIMARY KEY (`identifier`)
);

-- Only if you're using the Unknown Story esx_advanced_garage source code
ALTER TABLE owned_vehicles
ADD put_by varchar(255),
    in_garage_type varchar(255);

-- /!\ Make sure you have all these columns in owned_vehicles => owner, vehicle, plate, type, job, stored, in_garage_type, put_by
