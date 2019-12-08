/*
"database for heroku": "cat src/server/migrations/heroku.sql | heroku pg:psql -a mylaw-challenge DATABASE_URL"
*/

\i src/server/tables/users.sql
\i src/server/tables/talks.sql
\i src/server/tables/tickets.sql
\i src/server/seeders/users.sql
