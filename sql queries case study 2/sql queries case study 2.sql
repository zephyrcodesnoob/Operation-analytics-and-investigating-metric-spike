create database project_3;

use project_3;

create table users (
    user_id int,
    created_at varchar(100),
    company_id int,
    language VARCHAR(20),
    activated_at varchar(100),
    state VARCHAR(50)
);

create table events (
    user_id int,
    occurred_at varchar(100),
    event_type varchar(50),
    event_name varchar(100),
    location varchar(100),
    device varchar(50),
    user_type int
);

create table email_events(
    user_id int,
    occurred_at varchar(100),
    action varchar(100),
    user_type int
);

#weekly user engagement
select week(occurred_at) as week,
count(distinct user_id) as active_users, count(event_name) as total_events,
COUNT(distinct user_id) + count(event_name) as total_engagement
from events
group by week
order by total_engagement desc;

#user growth analysis
select extract(month from created_at) as month, 
count(distinct user_id) as total_users,
sum(count(distinct user_id)) over (order by extract(month from created_at)) as cumulative_users_sum
from users
group by extract(month from created_at)
order by month;


#weekly retnetion analysis
select extract(week from created_at) AS sign_up_week, count(distinct user_id) AS total_signups
from  users 
where user_id in (
select user_id 
from events 
where event_type in ( 'signup_flow', 'user registration') 
and event_name in ('complete_signup', 'register'))
group by sign_up_week
order by total_signups desc;

#weekly engagement per device
select device, extract(week from occurred_at) as week_num, count(distinct user_id) as engaged_users 
from events 
where event_type='engagement' 
group by device, week_num
order by engaged_users desc;


#5th
select action AS email_event_type, count(*) AS total_email_events, count(distinct user_id) as user_engagement,
(count(distinct user_id) * 100.0 / (select count(distinct user_id) from email_events)) as engagement_rate
from email_events
group by email_event_type;