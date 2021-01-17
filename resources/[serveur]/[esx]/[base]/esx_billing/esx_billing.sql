USE `essentialmode`;

create table billing
(
	id int auto_increment
		primary key,
	identifier varchar(255) not null,
	sender varchar(255) not null,
	target_type varchar(50) not null,
	target varchar(255) not null,
	label varchar(255) not null,
	amount int not null,
	split tinyint(1) default 0 not null,
	paid tinyint(1) default 0 not null
);

