--20
select pa.name as Patient, ph.name as Physician, m.name as Medication
from patient pa inner join
prescribes pr
on pa.ssn=pr.patient
inner join physician ph 
on pr.physician=ph.employeeid
inner join medication m 
on m.code=pr.medication
where p.appointment is not null

--21
select pa.name as Patient, ph.name as Physician, m.name as Medication
from patient pa inner join
prescribes pr
on pa.ssn=pr.patient
inner join physician ph 
on pr.physician=ph.employeeid
inner join medication m 
on m.code=pr.medication
where p.appointment is null

--22
select blockcode as Block, count (*) as [Number of available rooms]
from room
where unavailable='f'
group by blockcode
order by blockcode

--23

select blockfloor as floor, count (*) as [Number of available rooms]
from room
where unavailable='f'
group by blockfloor
order by blockfloor

--24
select blockfloor as Block,blockcode as Block, count (*) as [Number of available rooms]
from room
where unavailable='f'
group by blockfloor, blockcode
order by blockfloor, blockcode

--25
select blockfloor as Block,blockcode as Block, count (*) as [Number of unavailable rooms]
from room
where unavailable='t'
group by blockfloor, blockcode
order by blockfloor, blockcode
--26
select blockfloor AS Floor, COUNT(*) AS "No of available rooms"
from Rooms
where unavailable = 'f'
group by blockfloor
having COUNT(*) = (
    select MAX(CountAvail)
    from (
        select COUNT(*) AS CountAvail
        from Rooms
        where unavailable = 'f'
        group by blockfloor
    ) as Subquery
)

--27

select blockfloor AS Floor, COUNT(*) AS "No of available rooms"
from Rooms
where unavailable = 'f'
group by blockfloor
having COUNT(*) <> (
    select MAX(CountAvail)
    from (
        select COUNT(*) AS CountAvail
        from Rooms
        where unavailable = 'f'
        group by blockfloor
    ) as Subquery
)

--28
select p.name as Patient, r.roomnumber as Room, r.blockfloor as Floor, r.blockcode as block 
from patient p join stay s 
on p.ssn=s.patient
inner join Room r  --rooms or room
on s.room=r.roomnumber

--29
select n.name as Nurse, on_call.blockcode as [Block]
from nurse n inner JOIN
on_call on 
n.employeeid=on_call.nurse
order by n.name, on_call.blockcode

--30
select pa.name as Patient,
ph.name as Physician,
n.name as Nurse,
s.end_time as [Date of release],
pr.name as [treatment goint on],
r.roomnumber as Room,
r.blockfloor as FLOOR,
r.blockcode as [Block]
from patient pa
 --- problem joining 


--31




