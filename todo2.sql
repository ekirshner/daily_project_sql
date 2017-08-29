CREATE TABLE todos2 (
  id serial primary key,
  title varchar(255) not null,
  details varchar null,
  priority integer not null default 1,
  created_at timestamp not null,
  completed_at timestamp null
 );

-- 1) Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times, with not all having a completed time.

INSERT INTO todos2 (title, details, priority, created_at) VALUES ('Finish Project', 'Just do it', '1', '2017-08-28 11:48:12');
INSERT INTO todos2 (title, details, priority, created_at, completed_at) VALUES ('Get More Coffee', 'It is in the kitchen', '2', '2017-08-28 11:48:12', '2017-08-28 11:58:12');
INSERT INTO todos2 (title, details, priority, created_at) VALUES ('Eat Lunch', 'It is a sandwich', '3', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Finish Weekly Project', '4', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, details, priority, created_at) VALUES ('Finish Project 2', 'Just do it', '1', '2017-08-28 11:48:12');
INSERT INTO todos2 (title, details, priority, created_at, completed_at) VALUES ('Brush teeth', 'just brush them', '2', '2017-08-28 11:48:12', '2017-08-29 7:15:38');
INSERT INTO todos2 (title, details, priority, created_at) VALUES ('Learn how to moonwalk', 'It is hard', '4', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Sleep', '4', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Force George to write the 6th GOT book', '3', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Wash smelly dog', '5', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Fold laundry', '5', '2017-08-26 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Finish the 100', '5', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Cut hair', '5', '2017-08-25 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Go to Bora Bora', '1', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Go to Greece next spring', '2', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Go to Sweden and Russia next summer', '2', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Go to Australia and New Zealand', '5', '2017-08-27 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Go to Bali', '5', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Go to Thailand and Vietnam', '5', '2017-08-28 11:50:12');
INSERT INTO todos2 (title, priority, created_at) VALUES ('Go to Ireland and Switzerland', '5', '2017-08-28 11:50:12');            

select * from todos2;

-- 2) Write a SELECT statement to find all incomplete todos with priority 3.

select * from todos2 where completed_at is null and priority = 3;

-- 3) Write a SELECT statement to find the number of incomplete todos by priority.
select * from todos2 where completed_at is null order by priority asc;

-- 4) Write a SELECT statement to find the number of todos by priority created in the last 30 days.
select * from todos2 where created_at > '2017-07-29 11:00:00' order by priority asc;

-- 5) Write a SELECT statement to find the next todo you should work on. This is the todo with the
  --  highest priority that was created first.
select * from todos2 order by created_at asc, priority asc limit 1;