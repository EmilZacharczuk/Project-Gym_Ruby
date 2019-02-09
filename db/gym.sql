DROP TABLE bookings;
DROP TABLE sessions;
DROP TABLE members;

CREATE TABLE members (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(225),
  second_name VARCHAR(225),
  address VARCHAR(225)
);

CREATE TABLE sessions (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(225),
  instructor VARCHAR(225),
  day VARCHAR(225),
  start_time VARCHAR(225)
);

CREATE TABLE bookings (
  id SERIAL4 PRIMARY KEY,
  member_id INT4 REFERENCES members(id) ON DELETE CASCADE,
  session_id INT4 REFERENCES sessions(id) ON DELETE CASCADE
);
