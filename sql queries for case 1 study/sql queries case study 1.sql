create database project_3;

use project_3;

CREATE TABLE job_data (
ds DATE,
job_id INT,
actor_id INT,
event VARCHAR(10),
language VARCHAR(10),
time_spent INT,
org VARCHAR(10)
);

insert into job_data (ds, job_id, actor_id, event, language, time_spent, org)
values
('2020-11-30', 21, 1001, 'skip', 'English', 15, 'A'),
('2020-11-30', 22, 1006, 'transfer', 'Arabic', 25, 'B'),
('2020-11-29', 23, 1003, 'decision', 'Persian', 20, 'C'),
('2020-11-28', 23, 1005, 'transfer', 'Persian', 22, 'D'),
('2020-11-28', 25, 1002, 'decision', 'Hindi', 11, 'B'),
('2020-11-27', 11, 1007, 'decision', 'French', 104, 'D'),
('2020-11-26', 23, 1004, 'skip', 'Persian', 56, 'A'),
('2020-11-25', 20, 1003, 'transfer', 'Italian', 45, 'C');

#jobs reiewed over time
select ds as date, 
0.1*count(job_id)*3600/sum(time_spent) as jobs_reviewed_over_time
from job_data
where ds between '2020/11/25' AND '2020/11/30'
group by ds
order by jobs_reviewed_over_time desc;

#throughput analysis
select ds,
avg(0.1 * COUNT(job_id) * 3600 / sum(time_spent))
 over (
order by ds rows between 6 preceding and current row) as rolling_7day_average
from job_data
group by ds;

#daily metric evaluation
select ds, 0.1*count(job_id)*3600 /sum(time_spent) as daily_metric
from job_data
group by ds;

#language share analysis
select extract(month from ds) as month_num, language, 
(count(*)/(select count(*) from job_data)*100) as percentage_share from job_data 
group by ds, language;

select language, (count( *)/(select count( *) from job_data)*100) as percentage_share from job_data 
 group by language;
 
select language, (COUNT(*) * 100.0 /(SELECT COUNT(*) FROM job_data)) AS percentage_share
from job_data 
group by language
order by percentage_share DESC;

#duplicate rows
SELECT ds, job_id, actor_id, event, language, time_spent, org, COUNT(*) AS total_occurrences,
(COUNT(*) - 1) AS total_duplicates
FROM job_data
GROUP BY ds, job_id, actor_id, event, language, time_spent, org
HAVING COUNT(*) > 1;