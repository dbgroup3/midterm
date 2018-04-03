-- gp3 midterm

drop table regions cascade constraints;

create table regions (
	region_code int,
	region_name varchar2(25),
	primary key (region_code)
);

exit;
