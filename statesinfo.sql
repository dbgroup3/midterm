-- gp3 midterm

drop table statesinfo cascade constraints;

create table statesinfo (
	state_abv varchar2(2),
        region_code int,
	state_name varchar(16),
	primary key (state_abv),
	foreign key (region_code) references regions(region_code)
);

exit;
