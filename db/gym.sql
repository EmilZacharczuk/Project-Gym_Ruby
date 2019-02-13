DROP TABLE bookings;
DROP TABLE sessions;
DROP TABLE members;

CREATE TABLE members (
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(225),
  second_name VARCHAR(225),
  address VARCHAR(225)
);

CREATE TABLE sessions (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(225),
  instructor VARCHAR(225),
  day VARCHAR(225),
  start_time VARCHAR(225),
  spare_capacity INT8
);

CREATE TABLE bookings (
  id SERIAL8 PRIMARY KEY,
  member_id INT8 REFERENCES members(id) ON DELETE CASCADE,
  session_id INT8 REFERENCES sessions(id) ON DELETE CASCADE
);
