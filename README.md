# tournament
https://www.udacity.com/course/viewer#!/c-ud197-nd/
Udacity Full Stack developer project 2

intro
what project is

## Files 

###### tournament.py
Contains the implementation for the Swiss tournament
-- DESCRIBE METHODS?

###### tournament.sql
Contains the SQL queries to create the database, tables and views 

###### tournament_test.py

Contains the test cases for tournament.py

## Prerequisites 

The latest vagrant build for the Udacity tournament project.

## Instructions

1. Start Vagrant
  1. Open Terminal or cmd and browse to the vagrant folder
  2. Type `vagrant up`
2. SSH in to the vagrant VM
  1. in the same terminal type `vagrant ssh`
3. Change to the correct folder
  1. Type `cd /vagrant/tournament`
4. Open PSQL and run the tournament.sql 
  1. type `psql`
  2. copy the contents of tournament.sql and paste in to the terminal window
  3. type `\q` to quit out of PSQL 
5. Run the tests
  1. In the terminal type `python tournament_test.py`

## Expected Outcome

Success!  All tests pass!
vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success!  All tests pass!
