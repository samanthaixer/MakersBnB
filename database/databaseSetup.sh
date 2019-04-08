#!/bin/bash
#
# A shell script to set up a postgres database and create a table
# Made by Bart
#
#-----------------------------------------------------------------

echo 
echo "---------------------------------------"
echo "Setting up rentaburrow database"
echo "It will most likely need your password"
echo "---------------------------------------"
echo


echo "Pushing main database sql commands into postgres... hang tight."
sudo -u postgres psql < main_db.sql

echo "Pushing testing framework sql commands into postgres... almost there!"
sudo -u postgres psql < test_db.sql

echo "All done. GO GOOSE!"
