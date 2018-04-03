sqlplus -S eric/eric @regions.sql
sqlldr eric/eric control=regions.ctl

sqlplus -S eric/eric @statesinfo.sql
sqlldr eric/eric control=statesinfo.ctl

sqlplus -S eric/eric @positions.sql
sqlldr eric/eric control=positions.ctl

sqlplus -S eric/eric @roster.sql
sqlldr eric/eric control=roster.ctl
