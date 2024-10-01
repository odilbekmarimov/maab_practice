--insertlar boshqa queryda

select count(venue_name) from soccer_venue

-----

select count (distinct team_id) from player_mast
--select count (team_id) from player_mast
----

select count (results) from match_mast 
where results<>'Draw'
select * from match_mast
----
select count (results) from match_mast 
where results='Draw'

----
select min(play_date) as [Beginning Date] from match_mast

----
SELECT COUNT(*) AS self_goals_count
FROM goal_details
WHERE goal_type = 'O';

select * from goal_details

----

select count (play_stage) as count from match_mast
where play_stage = 'G' and results <>'Draw'

----
select count (distinct match_no) from penalty_shootout 

---

select count (decided_by) from match_mast
where decided_by='p' and play_stage='r'

-----

select match_no, count(goal_type) as [count] from goal_details
where goal_schedule='NT' 
group by match_no

---- 
select match_no, play_date, goal_score from match_mast
where stop1_sec=0

select count(distinct match_no) as [count] from match_details
where win_lose ='d'
and goal_score=0
and play_stage = 'g'

----
select count(distinct match_no) as count from match_details 
where win_lose ='w'
and goal_score=1
and penalty_score is null

-----

select count(*) as[Player replaced] from player_in_out
where in_out ='i'

-----

select count(*) as [Player replaced] from player_in_out
where in_out='I'
and play_schedule='NT'

-------

select count(*) as [Player replaced] from player_in_out
where in_out='I'
and play_schedule='ST'

-------

select count(*) as [Player replaced] from player_in_out
where in_out='I'
and play_half=1
and play_schedule='NT'

-----

select count(distinct match_no) [count] from match_details
where win_lose ='d'
and goal_score = 0


------

select count(*) [count] from player_in_out
where in_out='i'
and play_schedule = 'et'

---
select play_half, play_schedule, count(*)
from player_in_out
where in_out='i'
group by play_half, play_schedule
order by play_half, play_schedule, count(*) desc


-

select count(score_goal) as [Number of Penalty Kicks] from penalty_shootout 

------

select count(score_goal) 
as [Goal scored by Penalty Kicks] 
from penalty_shootout 
where score_goal='y'

-----

select count(score_goal) 
as [Goal missed or saved by Penalty Kicks] 
from penalty_shootout 
where score_goal='n'

--
select penalty_shootout.match_no, [Soccer Country].country_name, 
player_mast.player_name, player_mast.jersey_no, 
penalty_shootout.score_goal, penalty_shootout.kick_no
from [Soccer Country], penalty_shootout, player_mast
where [Soccer Country].country_id=penalty_shootout.team_id 
and penalty_shootout.player_id=player_mast.player_id
order by penalty_shootout.kick_no

