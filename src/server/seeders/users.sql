/*
Connect to db as mylaw and RUN  \c conference \i src/server/seeders/users.sql \q
*/

INSERT INTO users
    (id, full_name, username, email, "password")
VALUES
    (1010101010101, 'Frank Okezie', 'Obiedere', 'foobar@mail.com', crypt('AbcDFer123*@is!', gen_salt('bf', 12)));

INSERT INTO users
    (id, full_name, username, email, "password", is_admin, "type")
VALUES
    (5050505050505, 'Obi Franklyn', 'Ekemezie', 'barfoo@email.com', crypt('AbcDFer123*@is!', gen_salt('bf', 12)), true, 'Admin');

SELECT
    *
FROM
    users;
