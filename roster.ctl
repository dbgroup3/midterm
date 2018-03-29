load data infile 'roster.csv'
insert into table roster
fields terminated by "," optionally enclosed by '"'
(jersey,last_name,first_name,position,ht_f,ht_i,weight,class,city,state_abv)
