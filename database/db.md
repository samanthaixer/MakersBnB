
--------------------------Main-------------------------
sudo postgres 
psql

CREATE DATABASE rentaburrow

\c rentaburrow

CREATE TABLE mongoosedatabase(id SERIAL PRIMARY KEY, name VARCHAR(60), description VARCHAR(60), nightlyrate NUMERIC(6,2), status VARCHAR(20));

\q

--------------------------end main----------------------

--------------------------Test-------------------------

CREATE DATABASE rentaburrow_test;

\c rentaburrow_test

CREATE TABLE mongoosedatabase(id SERIAL PRIMARY KEY, name VARCHAR(60), description VARCHAR(60), nightlyrate NUMERIC(6,2), status VARCHAR(20));


-------------------------Rake setup--------------------------------

 rake db:create
 rake db:schema:load 
 