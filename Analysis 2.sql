create table master_table(                                 -- create the master_table
`Date` date,
Bajaj decimal(7,2),
TCS decimal(7,2),
TVS decimal(7,2),
Infosys decimal(7,2),
Eicher decimal(7,2),
Hero decimal(7,2)
);

insert into master_table                                    -- insert values from different tables to master_table
select 
b.`Date`,
b.Close_Price,
t.Close_Price,
tv.Close_Price,
i.Close_Price,
e.Close_Price,
h.Close_Price
from bajaj_auto as b 

join tcs as t on t.Date=b.Date                             -- As date column is commom in all six table so i fetched the data on the basis of Date
join tvs_motors as tv on tv.Date=b.Date
join infosys as i on i.Date=b.Date
join eicher_motors as e on e.Date=b.Date
join hero_motocorp as h on h.Date=b.Date;
