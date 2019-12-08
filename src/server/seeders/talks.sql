/*
Connect to db as mylaw and RUN  \c conference \i src/server/seeders/talks.sql \q
*/
INSERT INTO talks
    ( id, speaker, topic, "date", venue, capacity)
VALUES
    ( 2020202020202, 'Foo', 'Bar', '25th December, 1PM', 'Foo Bar', 100);

INSERT INTO talks
    ( id, speaker, topic, "date", venue, capacity)
VALUES
    ( 3030303030303, 'Boo', 'Far', '1st January, 2AM', 'Boo Far', 300);

SELECT *
FROM talks;