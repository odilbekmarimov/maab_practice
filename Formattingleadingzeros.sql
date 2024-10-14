CREATE TABLE Numbers (number int)
INSERT INTO Numbers VALUES 
(655378), (75482), (1524), (325), (23), (7)
declare @maxdigits int = max(len(number)) from numbers 
-- using right function

select right (replicate('0', @maxdigits)+
             cast(number as varchar(@maxdigits),
             6) as rightfunction
from numbers

--using format
select format(number, replicate ('0', @maxdigits)
  as formatN
from numbers
--concat
select concat(replicate('0', @maxdigits-len(number)), number) 
as concatn from numbers
--subquery

  
select right(replicate('0', 
         (select max(len(number)) from numbers)) 
         + cast(number as varchar), 
         (select max(len(number)) from numbers))
  as subquery
from numbers
