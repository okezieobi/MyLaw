/*
psql -U mylaw -d postgres -h 127.0.0.1 -W (linux)
RUN \i src/server/migrations/migrate.sql \q
*/

DROP DATABASE IF EXISTS conference;
CREATE DATABASE conference;
\c conference
\i src/server/tables/users.sql
\i src/server/tables/talks.sql
\i src/server/tables/tickets.sql