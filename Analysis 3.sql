-- ------------------------------------------------Buy and Sell For Bajaj Autos -------------------------------------------------

create table bajaj2                                 -- create a new table bajaj2
(`Date` date,
`Close Price` float(10),
`Signal` varchar(10));

insert into bajaj2
select `Date`,`Close Price`,                        -- Directly Inserting the value from another table bajaj1 according to the conditions given in the question
case                                                -- Case is used to calculate whether the short moving avg is greater than long moving avg or viceversa
when `20 Day MA`> `50 Day MA` then 'Buy'            -- Condition to be checked
when `20 Day MA`< `50 Day MA` then 'Sell'
else 'Hold'                                         -- if none of the above conditon is met then else part is execute
end 
from bajaj1;                                        

--------------------------------------------------------------------------------------------------------------------------------



-- ------------------------------------------------Buy and Sell For Eicher Motors -------------------------------------------------

create table eicher2
(`Date` date,
`Close Price` float(10),
`Signal` varchar(10));

insert into eicher2
select `Date`,`Close Price`,
case
when `20 Day MA`> `50 Day MA` then 'Buy'
when `20 Day MA`< `50 Day MA` then 'Sell'
else 'Hold'
end 
from eicher1;

--------------------------------------------------------------------------------------------------------------------------------



-- ------------------------------------------------Buy and Sell For Hero Motocorp -------------------------------------------------

create table hero2
(`Date` date,
`Close Price` float(10),
`Signal` varchar(10));

insert into hero2
select `Date`,`Close Price`,
case
when `20 Day MA`> `50 Day MA` then 'Buy'
when `20 Day MA`< `50 Day MA` then 'Sell'
else 'Hold'
end 
from hero1;

--------------------------------------------------------------------------------------------------------------------------------



-- ------------------------------------------------Buy and Sell For Infosys -------------------------------------------------

create table infosys2
(`Date` date,
`Close Price` float(10),
`Signal` varchar(10));

insert into infosys2
select `Date`,`Close Price`,
case
when `20 Day MA`> `50 Day MA` then 'Buy'
when `20 Day MA`< `50 Day MA` then 'Sell'
else 'Hold'
end 
from infosys1;

--------------------------------------------------------------------------------------------------------------------------------



-- ------------------------------------------------Buy and Sell For TCS -------------------------------------------------

create table tcs2
(`Date` date,
`Close Price` float(10),
`Signal` varchar(10));

insert into tcs2
select `Date`,`Close Price`,
case
when `20 Day MA`> `50 Day MA` then 'Buy'
when `20 Day MA`< `50 Day MA` then 'Sell'
else 'Hold'
end 
from tcs1;

--------------------------------------------------------------------------------------------------------------------------------



-- ------------------------------------------------Buy and Sell For TVS Motors -------------------------------------------------

create table tvs2
(`Date` date,
`Close Price` float(10),
`Signal` varchar(10));

insert into tvs2
select `Date`,`Close Price`,
case
when `20 Day MA`> `50 Day MA` then 'Buy'
when `20 Day MA`< `50 Day MA` then 'Sell'
else 'Hold'
end 
from tvs1;
 
-- ------------------------------------------------------------------------------------------------------------------------------