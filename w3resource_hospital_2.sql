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

