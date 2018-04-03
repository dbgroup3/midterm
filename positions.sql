-- gp3 midterm

drop table positions cascade constraints;

create table positions (
	position_name varchar2(25),
	position_unit character(1),
	primary key (position_name)
);

exit;
