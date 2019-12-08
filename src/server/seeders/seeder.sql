/*
psql -U mylaw -d postgres -h 127.0.0.1 -W (linux)
RUN \i src/server/seeders/seeder.sql \q
*/
\c conference
\i src/server/seeders/users.sql
\i src/server/seeders/talks.sql
\i src/server/seeders/tickets.sql