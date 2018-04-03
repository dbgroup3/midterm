-- gp3 midterm

drop table roster;

create table roster (
	jersey int,
	last_name varchar2(25),
	first_name varchar2(25),
	position varchar2(25),
	ht_f int,
	ht_i int,
	weight int,
	class varchar2(2),
	city varchar2(25),
	state_abv varchar2(2),
	primary key (jersey, last_name),
	foreign key (state_abv) references statesinfo(state_abv)
		on delete set null
		on update cascade,
	foreign key (position) references positions(position_name)
		on delete set null
		on update cascade
);

exit;
