CREATE TABLE todos (
  id serial primary key,
  title varchar(255) not null,
  details varchar null,
  priority integer not null default 1,
  created_at timestamp not null,
  completed_at timestamp null
 );

-- Write the CREATE TABLE statement to make this table.

-- createdb todolist
-- psql todolist

DELETE FROM todos;

-- Write INSERT statements to insert five todos into this table, with one of them completed.

INSERT INTO todos (title, details, priority, created_at) VALUES ('Finish Project', 'Just do it', '1', '2017-08-28 11:48:12');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Get More Coffee', 'It is in the kitchen', '2', '2017-08-28 11:48:12', '2017-08-28 11:50:12');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Eat Lunch', 'It is a sandwich', '3', '2017-08-28 11:50:12');
INSERT INTO todos (title, priority, created_at) VALUES ('Finish Weekly Project', '4', '2017-08-28 11:50:12');
INSERT INTO todos (title, priority, created_at) VALUES ('Sleep', '5', '2017-08-28 11:50:12');

-- Write a SELECT statement to find all incomplete todos.

SELECT * FROM todos WHERE completed_at IS NULL;



-- Write a SELECT statement to find all todos with a priority above 1.

SELECT * FROM todos WHERE priority > 1;


-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.

UPDATE todos SET completed_at = now() WHERE id = 1;

-- Write a DELETE statement to delete all completed todos.

DELETE FROM todos WHERE completed_at IS NOT NULL;