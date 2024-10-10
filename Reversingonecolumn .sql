create table letters(id int, letter char(1)) 
insert into letters values (1,'a'), (2, 'b'), (3, 'c'), (4, 'd'), (5, 'e') 
select a.id, b.letter from letters a inner join 
(select letter, row_number () over (order by id desc) as rn from letters) as b 
on a.id=b.rn
