GYM

GYM App is a Ruby application with an Sinatra and PostgreSQL object-relational database.

It is the first individual project completed after 4 weeks of CodecClan course.

Getting Started

These instructions will get you a copy of the project up and running on your local machine for development purposes.

Installing

Install PostrgresSQL and PG Ruby gem.

# terminal

Create database:

createdb gym

Seed the database:

psql -d gym -f gym.sql


Using

The application is running on port 4567 so visit http://localhost:4567.
