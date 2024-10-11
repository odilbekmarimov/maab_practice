--https://www.w3resource.com/sql-exercises/hospital-database-exercise/sql-exercise-on-hospital-database.php
--1
select * from nurse where registered='f'

--2
select name as Name, position as Position from nurse where position='Head Nurse'

--3

select d.name as Department, p.name as Physician from department d join physician p on d.head=p.employeeid

--4

select count(distinct patient) as 'no of patients taken at least one appointment' from appointment

--5

select blockfloor as Floor, blockcode as Block from room where roomnumber=212

-- 6
select count(roomnumber) as [Number of available rooms] from room where unavailable='f'

--7
select count(roomnumber) as [Number of unavailable rooms] from room where unavailable='t'

--8

select p.name as Physician, d.name as Department from physician p join affiliated_with a on p.employeeid=a.physician 
inner join department d on a.department=d.demartmentid

--9

select p.name as Physician, p.name as Treatment from physician p 
inner join trained_in t on t.physician = p.employeeid
inner join [procedure] p on p.code=t.treatment

--10
select p.name as Physician, p.position, d.name as department 
from physician p, department d, affiliated_with a
where p.employeeid=a.physician 
and a.primaryaffiliation='f' 
and d.departmentid=a.department

---11
select p.name as Physician, p.position from physician p
where p.employeeid not in (select physician from trained_in)

--12

select p.name as Patient, p.address, ph.name as Physician from patient p, physician ph
where p.pcp=ph.employeeid

--13

select p.name as patient, count(a.physician) as [appointment for no. of physicians]
from patient p
left join appointment a on p.ssn = a.patient
group by p.name

--14

select count(distinct patient) as [No. of patients got appointment for room C] 
from appointment where examinationroom='C'

--15

select p.name as patient, a.examinationroom as [room no.], 
a.start_dt_time as [Date and Time of appointment]
 from patient p inner join appointment a 
 on a.patient=p=ssn

 --16

select n.name as [Name of the nurse], a.examinationroom as [Room no]
from nurse n inner join appointment AS a
on n.employeeid=a.prepnurse

--17
select pa.name as [Name of the patient],  n.name as [Name of the Nurse assisting the physician],
ph.name as [Name of the physician], a.examinationroom as [Room no], a.start_dt_time 
from patient pa inner JOIN
appointment a on pa.ssn=a.patient
inner join nurse n on a.prepnurse=n.employeeid
inner join physician ph on a.physician=ph.employeeid
where a.start_dt_time='2008-04-25 10:00:00'

--18

select pa.name as [Name of the patient], ph.name as [Name of the physician], a.examinationroom as [Room no] 
from patient pa inner join appointment a
on pa.ssn=a.patient inner JOIN
physician ph on a.physician=p.employeeid
where a.prepnurse is null

--19

select pa.name as Patient, ph.name as Physician, m.name as Medication
from patient pa
inner join prescribes as pr 
on pa.ssn=pr.patient
inner join physician as ph
on ph.employeeid=pr.physician
inner join medication m 
on m.code=pr.medication




