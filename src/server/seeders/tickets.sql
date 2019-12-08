/*
Connect to db as mylaw and RUN  \c conference \i src/server/seeders/tickets.sql \q
*/
INSERT INTO tickets
    (id, talk_id, attendee_id)
VALUES
    (4040404040404, 2020202020202, 1010101010101);

INSERT INTO tickets
    (id, talk_id, attendee_id)
VALUES
    (6060606060606, 3030303030303, 5050505050505);


SELECT *
FROM tickets;