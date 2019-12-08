/*
Connect to database as mylaw and RUN  \c website \i src/servers/tables/tickets.sql
*/

DROP TABLE IF EXISTS tickets;
CREATE TABLE tickets
(
    id          bigint      PRIMARY KEY NOT NULL,
    talk_id     bigint      NOT NULL REFERENCES talks(id) ON DELETE CASCADE,
    attendee_id bigint      NOT NULL REFERENCES users(id),
    created_on  timestamptz DEFAULT NOW()
);