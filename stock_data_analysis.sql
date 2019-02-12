# --- Data Imorting --- #

# Creating the tables to load data into from .csv files.
create table `bajaj auto` (
`Date` date, `Open Price` float(10,2),`High Price` float(10,2),`Low Price` float(10,2),`Close Price` float(10,2),`WAP` double,`No.of Shares` bigint ,
`No. of Trades` bigint,`Total Turnover (Rs.)` float,`Deliverable Quantity` bigint,`% Deli. Qty to Traded Qty` float(4,2),
`Spread High-Low` float(6,2),`Spread Close-Open` float(6,2)
);

create table `eicher motors` (
`Date` date, `Open Price` float(10,2),`High Price` float(10,2),`Low Price` float(10,2),`Close Price` float(10,2),`WAP` double,`No.of Shares` bigint ,
`No. of Trades` bigint,`Total Turnover (Rs.)` float,`Deliverable Quantity` bigint,`% Deli. Qty to Traded Qty` float(4,2),
`Spread High-Low` float(6,2),`Spread Close-Open` float(6,2)
);

create table `hero motocorp` (
`Date` date, `Open Price` float(10,2),`High Price` float(10,2),`Low Price` float(10,2),`Close Price` float(10,2),`WAP` double,`No.of Shares` bigint ,
`No. of Trades` bigint,`Total Turnover (Rs.)` float,`Deliverable Quantity` bigint,`% Deli. Qty to Traded Qty` float(4,2),
`Spread High-Low` float(6,2),`Spread Close-Open` float(6,2)
);

create table `infosys` (
`Date` date, `Open Price` float(10,2),`High Price` float(10,2),`Low Price` float(10,2),`Close Price` float(10,2),`WAP` double,`No.of Shares` bigint ,
`No. of Trades` bigint,`Total Turnover (Rs.)` float,`Deliverable Quantity` bigint,`% Deli. Qty to Traded Qty` float(4,2),
`Spread High-Low` float(6,2),`Spread Close-Open` float(6,2)
);

create table `tcs` (
`Date` date, `Open Price` float(10,2),`High Price` float(10,2),`Low Price` float(10,2),`Close Price` float(10,2),`WAP` double,`No.of Shares` bigint ,
`No. of Trades` bigint,`Total Turnover (Rs.)` float,`Deliverable Quantity` bigint,`% Deli. Qty to Traded Qty` float(4,2),
`Spread High-Low` float(6,2),`Spread Close-Open` float(6,2)
);

create table `tvs motors` (
`Date` date, `Open Price` float(10,2),`High Price` float(10,2),`Low Price` float(10,2),`Close Price` float(10,2),`WAP` double,`No.of Shares` bigint ,
`No. of Trades` bigint,`Total Turnover (Rs.)` float,`Deliverable Quantity` bigint,`% Deli. Qty to Traded Qty` float(4,2),
`Spread High-Low` float(6,2),`Spread Close-Open` float(6,2)
);


# Importing data from the given csv files. The csv files have been put into the assignment (schema) folder created by MYSQL after creating the schema.
# Since the Date in the file is not ideal for importing directly, I am converting it into the desired date format using the SET command as shown below.
# Also note, that there are two colummns `Deliverable Quantity` and `% Deli. Qty to Traded Qty` which contain blanks for 1 row each in the given data sets.
# To deal with these blanks, I am replacing them with null to be able to import all the 889 rows for all the columns.

# importing data for bajaj auto.
LOAD DATA INFILE 'Bajaj Auto.csv'
INTO TABLE `bajaj auto`
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(
	@Dat,`Open Price`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,
    `No. of Trades`,`Total Turnover (Rs.)`,@DQ,@DQT,
    `Spread High-Low`,`Spread Close-Open`
)

SET `Date` = str_to_date(@Dat,'%d-%M-%Y'),
`Deliverable Quantity` = IF(@DQ='',NULL,@DQ),
`% Deli. Qty to Traded Qty` = IF(@DQT='',NULL,@DQT)
;

# importing data for eicher motors.
LOAD DATA INFILE 'Eicher Motors.csv'
INTO TABLE `eicher motors`
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(
	@Dat,`Open Price`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,
    `No. of Trades`,`Total Turnover (Rs.)`,@DQ,@DQT,
    `Spread High-Low`,`Spread Close-Open`
)

SET `Date` = str_to_date(@Dat,'%d-%M-%Y'),
`Deliverable Quantity` = IF(@DQ='',NULL,@DQ),
`% Deli. Qty to Traded Qty` = IF(@DQT='',NULL,@DQT)
;


# importing data for hero motocorp.
LOAD DATA INFILE 'Hero Motocorp.csv'
INTO TABLE `hero motocorp`
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(
	@Dat,`Open Price`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,
    `No. of Trades`,`Total Turnover (Rs.)`,@DQ,@DQT,
    `Spread High-Low`,`Spread Close-Open`
)

SET `Date` = str_to_date(@Dat,'%d-%M-%Y'),
`Deliverable Quantity` = IF(@DQ='',NULL,@DQ),
`% Deli. Qty to Traded Qty` = IF(@DQT='',NULL,@DQT)
;


# importing data for infosys.
LOAD DATA INFILE 'Infosys.csv'
INTO TABLE `infosys`
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(
	@Dat,`Open Price`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,
    `No. of Trades`,`Total Turnover (Rs.)`,@DQ,@DQT,
    `Spread High-Low`,`Spread Close-Open`
)

SET `Date` = str_to_date(@Dat,'%d-%M-%Y'),
`Deliverable Quantity` = IF(@DQ='',NULL,@DQ),
`% Deli. Qty to Traded Qty` = IF(@DQT='',NULL,@DQT)
;


# importing data for tcs.
LOAD DATA INFILE 'TCS.csv'
INTO TABLE `tcs`
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(
	@Dat,`Open Price`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,
    `No. of Trades`,`Total Turnover (Rs.)`,@DQ,@DQT,
    `Spread High-Low`,`Spread Close-Open`
)

SET `Date` = str_to_date(@Dat,'%d-%M-%Y'),
`Deliverable Quantity` = IF(@DQ='',NULL,@DQ),
`% Deli. Qty to Traded Qty` = IF(@DQT='',NULL,@DQT)
;


# importing data for tvs motors.
LOAD DATA INFILE 'TVS Motors.csv'
INTO TABLE `tvs motors`
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(
	@Dat,`Open Price`,`High Price`,`Low Price`,`Close Price`,`WAP`,`No.of Shares`,
    `No. of Trades`,`Total Turnover (Rs.)`,@DQ,@DQT,
    `Spread High-Low`,`Spread Close-Open`
)

SET `Date` = str_to_date(@Dat,'%d-%M-%Y'),
`Deliverable Quantity` = IF(@DQ='',NULL,@DQ),
`% Deli. Qty to Traded Qty` = IF(@DQT='',NULL,@DQT)
;

# --- Data import COMPLETED --- #

# --- MOVING AVERAGES CALCULATION AND TABLES CREATION --- #

# Creatng and inserting data into the tables that contain Moving Averages
create table bajaj1 as 
select `Date`, `close price`, avg(`close price`) over w20 as `20 day ma`, avg(`close price`) over w50 as `50 day ma`
from `bajaj auto`
window	w20 as (order by Date rows 19 preceding),
		w50 as (order by Date rows 49 preceding)
order by Date asc;

create table eicher1 as 
select `Date`, `close price`, avg(`close price`) over w20 as `20 day ma`, avg(`close price`) over w50 as `50 day ma`
from `eicher motors`
window	w20 as (order by Date rows 19 preceding),
		w50 as (order by Date rows 49 preceding)
order by Date asc;

create table hero1 as 
select `Date`, `close price`, avg(`close price`) over w20 as `20 day ma`, avg(`close price`) over w50 as `50 day ma`
from `hero motocorp`
window	w20 as (order by Date rows 19 preceding),
		w50 as (order by Date rows 49 preceding)
order by Date asc;

create table infosys1 as 
select `Date`, `close price`, avg(`close price`) over w20 as `20 day ma`, avg(`close price`) over w50 as `50 day ma`
from `infosys`
window	w20 as (order by Date rows 19 preceding),
		w50 as (order by Date rows 49 preceding)
order by Date asc;

create table tcs1 as 
select `Date`, `close price`, avg(`close price`) over w20 as `20 day ma`, avg(`close price`) over w50 as `50 day ma`
from `tcs`
window	w20 as (order by Date rows 19 preceding),
		w50 as (order by Date rows 49 preceding)
order by Date asc;

create table tvs1 as 
select `Date`, `close price`, avg(`close price`) over w20 as `20 day ma`, avg(`close price`) over w50 as `50 day ma`
from `tvs motors`
window	w20 as (order by Date rows 19 preceding),
		w50 as (order by Date rows 49 preceding)
order by Date asc;

# --- COMPLETED: MOVING AVERAGES CALCULATION AND TABLES CREATION --- #

# Ignoring the first 49 rows while creatin signal tables as these Moving averages do no make any sense.
# To find out the 50th Date in the dataset, I have used limit function and selected the 50th date as shown below.

select date from bajaj1
limit 49,1;
# this returns '2015-03-13'. The 50th row.

delete from bajaj1
where date < '2015-03-13';

delete from eicher1
where date < '2015-03-13';

delete from hero1
where date < '2015-03-13';

delete from infosys1
where date < '2015-03-13';

delete from tcs1
where date < '2015-03-13';

delete from tvs1
where date < '2015-03-13';

# --- MASTER TABLE CREATION --- #

create table master_table as
select b.date as `date`,
b.`close price` as `bajaj`,
tc.`close price` as `tcs`,
tv.`close price` as `tvs`,
i.`close price` as `infosys`,
e.`close price` as `eicher`,
h.`close price` as `hero`
from `bajaj1` as b
inner join `eicher1` as e on b.date = e.date
inner join `hero1` as h on e.date = h.date
inner join `infosys1` as i on h.date = i.date
inner join `tcs1` as tc on i.date = tc.date
inner join `tvs1` as tv on tc.date = tv.date;

select * from master_table;

# --- COMPLETED: MASTER TABLE CREATION --- #


# --- SIGNALS CALCULATION AND RESPECTIVE TABLES CREATION --- #

create table bajaj2 as
select `date`,`close price`,
case 
	when ((lag(`20 day MA`,1) over w < lag(`50 day MA`,1) over w) and (`20 day MA` > `50 day MA`))
		then 'buy'
    when ((lag(`20 day MA`,1) over w > lag(`50 day MA`,1) over w) and (`20 day MA` < `50 day MA`))
		then 'sell'
    else 'hold' 
end
as `signal`
from bajaj1
window w as (order by Date)
order by Date;

create table eicher2 as
select `date`,`close price`,
case 
	when ((lag(`20 day MA`,1) over w < lag(`50 day MA`,1) over w) and (`20 day MA` > `50 day MA`))
		then 'buy'
    when ((lag(`20 day MA`,1) over w > lag(`50 day MA`,1) over w) and (`20 day MA` < `50 day MA`))
		then 'sell'
    else 'hold' 
end
as `signal`
from eicher1
window w as (order by Date)
order by Date;


create table hero2 as
select `date`,`close price`,
case 
	when ((lag(`20 day MA`,1) over w < lag(`50 day MA`,1) over w) and (`20 day MA` > `50 day MA`))
		then 'buy'
    when ((lag(`20 day MA`,1) over w > lag(`50 day MA`,1) over w) and (`20 day MA` < `50 day MA`))
		then 'sell'
    else 'hold' 
end
as `signal`
from hero1
window w as (order by Date)
order by Date;

create table infosys2 as
select `date`,`close price`,
case 
	when ((lag(`20 day MA`,1) over w < lag(`50 day MA`,1) over w) and (`20 day MA` > `50 day MA`))
		then 'buy'
    when ((lag(`20 day MA`,1) over w > lag(`50 day MA`,1) over w) and (`20 day MA` < `50 day MA`))
		then 'sell'
    else 'hold' 
end
as `signal`
from infosys1
window w as (order by Date)
order by Date;


create table tcs2 as
select `date`,`close price`,
case 
	when ((lag(`20 day MA`,1) over w < lag(`50 day MA`,1) over w) and (`20 day MA` > `50 day MA`))
		then 'buy'
    when ((lag(`20 day MA`,1) over w > lag(`50 day MA`,1) over w) and (`20 day MA` < `50 day MA`))
		then 'sell'
    else 'hold' 
end
as `signal`
from tcs1
window w as (order by Date)
order by Date;


create table tvs2 as
select `date`,`close price`,
case 
	when ((lag(`20 day MA`,1) over w < lag(`50 day MA`,1) over w) and (`20 day MA` > `50 day MA`))
		then 'buy'
    when ((lag(`20 day MA`,1) over w > lag(`50 day MA`,1) over w) and (`20 day MA` < `50 day MA`))
		then 'sell'
    else 'hold' 
end
as `signal`
from tvs1
window w as (order by Date)
order by Date;

# --- COMPLETED: SIGNALS CALCULATION AND RESPECTIVE TABLES CREATION --- #


# --- DEFINING A UDF TO FETCH SIGNAL BASED ON DATE INPUT --- #

DELIMITER $$
create function get_signal_bajaj(cur_date date)
returns varchar(4)
  deterministic
begin
	return (select `signal` from bajaj2 where date = cur_date);
end
$$
DELIMITER ;

-- how to use the function is shown below
select get_signal_bajaj('2015-05-18');


# --- COMPLETED: DEFINING A UDF TO FETCH SIGNAL BASED ON DATE INPUT --- #



# Additionally a generic function can be defined as follows:

DELIMITER $$
create function get_signal(cur_date date, stock varchar(20))
returns varchar(4)
  deterministic
begin
	declare signals varchar(4);
	if stock like '%bajaj%' then SET signals = (select `signal` from bajaj2 where date = cur_date);
	elseif stock like '%eicher%' then SET signals = (select `signal` from eicher2 where date = cur_date);
    elseif stock like '%hero%' then SET signals = (select `signal` from hero2 where date = cur_date);
    elseif stock like '%infosys%' then SET signals = (select `signal` from infosys2 where date = cur_date);
    elseif stock like '%tcs%' then SET signals = (select `signal` from tcs2 where date = cur_date);
    elseif stock like '%tvs%' then SET signals = (select `signal` from tvs2 where date = cur_date);
    end if;
return (signals);
end;
$$
DELIMITER ;

# This function is generic . It return signal based on date and stock name.
# Also handles some level of typo errors as it just check if the entered string holds the name of the stock and retuns the signal corresponding to it.
select get_signal('2015-05-18','bajajs'); # Typo made on purpose to show it use.

# --- COMPLETED --- #

