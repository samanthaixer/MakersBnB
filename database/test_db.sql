drop database if exists rentaburrow_test;

create database rentaburrow_test;

DROP TABLE if exists mongoosedatabase;

CREATE TABLE mongoosedatabase
(
    id SERIAL PRIMARY KEY, name VARCHAR(60), 
    description VARCHAR(60), 
    nightlyrate NUMERIC(6,2), 
    status VARCHAR(20)
);