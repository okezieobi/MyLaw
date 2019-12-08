/*
Connect to db as mylaw and RUN  \c conference \i src/server/seeders/delete.sql \q
*/

TRUNCATE users
CASCADE;

TRUNCATE talks
CASCADE;

TRUNCATE tickets
CASCADE;