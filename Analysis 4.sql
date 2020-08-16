delimiter $$
create function Buy_Sell_Hold                                                           -- creating a function named as Buy_Sell_Hold
(
`Date` date                                                                             -- Defining parameter with their datatype for input
)
returns varchar(10)                                                                     -- Specify the datatype of return value

deterministic                                                                           -- Function which returned specific output for specific input
begin     		 			                                                            -- Body of Function is started
declare what varchar(10);                                                               -- Declare a variable
set @what = (select `Signal` from bajaj2 as b where b.Date = Date);                     -- Assigning of a value to the declared variable from table bajaj2
return @what;                                                                           -- Returning the Variable
end																						-- End of function body

$$
delimiter ;

select Buy_Sell_Hold('2018-05-23');                                                     -- Calling of function