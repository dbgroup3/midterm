load data infile 'positions.csv'
insert into table positions
fields terminated by "," optionally enclosed by '"'
(position_name, position_unit)
