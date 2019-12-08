/*
Connect to database as mylaw and RUN  \c website \i src/servers/tables/users.sql
*/

DROP TABLE IF EXISTS talks;
CREATE TABLE talks
(
    id          bigint       PRIMARY KEY NOT NULL,
    speaker     varchar(128) NOT NULL,
    topic       varchar(128) NOT NULL,
    "date"      varchar(128) NOT NULL,
    venue       varchar(128) NOT NULL,
    capacity    integer      NOT NULL,
    created_on  timestamptz  DEFAULT NOW(),
    modified_on timestamptz  DEFAULT NOW()
);