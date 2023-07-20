-- Use SQL insert statements to add any
-- starting/dummy data to your database tables

-- EXAMPLE:

--  insert into "todos"
--    ("task", "isCompleted")
--    values
--      ('Learn to code', false),
--      ('Build projects', false),
--      ('Get a job', false);

insert into "users" ("username", "email")
values
  ('moviewatcher', 'ilovemovies@email.com'),
  ('heyarnold', 'footballhead@email.com'),
  ('critic', 'ihatemovies@email.com');

insert into "user_activity" ("userId", "movieId", "thumbsUp", "thumbsDown")
VALUES
  (3, 'rm2267976192', false, true),
  (3, 'tt12210550', false, true),
  (3, 'rm706774528', false, true);

