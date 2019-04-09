drop database if exists rentaburrow;

create database rentaburrow;

DROP TABLE if exists nests;

CREATE TABLE nests
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(60),
    description VARCHAR(60),
    nightlyrate NUMERIC(6,2),
    status VARCHAR(20)
);
