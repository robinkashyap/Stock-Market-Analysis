-------------------------------------------- For Bajaj Auto Stock ----------------------------------------------------------------------------

create table bajaj1                                   -- create table bajaj1
(`Date` date,
`Close Price` float(10),
`20 Day MA` float(10),
`50 Day MA` float(10)
);
insert into bajaj1                                    -- inserting the values to the table
select `Date`,`Close_Price`,                       
case
when Row_No<=19 then null                             -- here we have required 20 day moving average so first 19 rows are setto be null
else avg(close_price) over(rows 19 preceding)         -- now from 20th row we start calculating the moving avg
end,
case
when Row_No<=49 then null                             -- same as the above steps(for calculating 20 days moving avg) for calculating 50 day moving avg
else avg(close_price) over(rows 49 preceding)
end
from bajaj_auto;

-- ---------------------------------------------------------------------------------------------------------------------------------------------


-- ------------------------------------------ For Eicher Motors Stock ----------------------------------------------------------------------------

create table eicher1
(`Date` date,
`Close Price` float(10),
`20 Day MA` float(10),
`50 Day MA` float(10)
);
insert into eicher1
select `Date`,`Close_Price`,
case
when Row_No<=19 then null
else avg(close_price) over(rows 19 preceding)
end,
case
when Row_No<=49 then null
else avg(close_price) over(rows 49 preceding)
end
from eicher_motors;

-- ----------------------------------------------------------------------------------------------------------------------------------------------


-- ------------------------------------------ For Hero Motocorp Stock ----------------------------------------------------------------------------

create table hero1
(`Date` date,
`Close Price` float(10),
`20 Day MA` float(10),
`50 Day MA` float(10)
);
insert into hero1
select `Date`,`Close_Price`,
case
when Row_No<=19 then null
else avg(close_price) over(rows 19 preceding)
end,
case
when Row_No<=49 then null
else avg(close_price) over(rows 49 preceding)
end
from hero_motocorp;

-- ----------------------------------------------------------------------------------------------------------------------------------------------


-------------------------------------------- For Infosys Stock ----------------------------------------------------------------------------

create table infosys1
(`Date` date,
`Close Price` float(10),
`20 Day MA` float(10),
`50 Day MA` float(10)
);
insert into infosys1
select `Date`,`Close_Price`,
case
when Row_No<=19 then null
else avg(close_price) over(rows 19 preceding)
end,
case
when Row_No<=49 then null
else avg(close_price) over(rows 49 preceding)
end
from infosys;

-- ----------------------------------------------------------------------------------------------------------------------------------------------


-------------------------------------------- For TCS Stock ----------------------------------------------------------------------------

create table tcs1
(`Date` date,
`Close Price` float(10),
`20 Day MA` float(10),
`50 Day MA` float(10)
);
insert into tcs1
select `Date`,`Close_Price`,
case
when Row_No<=19 then null
else avg(close_price) over(rows 19 preceding)
end,
case
when Row_No<=49 then null
else avg(close_price) over(rows 49 preceding)
end
from tcs;

-- ----------------------------------------------------------------------------------------------------------------------------------------------


-------------------------------------------------- For TVS Motors Stock ----------------------------------------------------------------------------

create table tvs1
(`Date` date,
`Close Price` float(10),
`20 Day MA` float(10),
`50 Day MA` float(10)
);
insert into tvs1
select `Date`,`Close_Price`,
case
when Row_No<=19 then null
else avg(close_price) over(rows 19 preceding)
end,
case
when Row_No<=49 then null
else avg(close_price) over(rows 49 preceding)
end
from tvs_motors;
