-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE tournament ();

CREATE TABLE players(
  player_id serial PRIMARY KEY,
  player_name text
);

CREATE TABLE match(
game_id SERIAL PRIMARY KEY,
  player_1 INTEGER FOREIGN KEY(player),
  player_2 INTEGER,
  winner INTEGER,
  loser INTEGER

);
-- templates to get delete correct
CREATE TABLE match (
first_player text,
second_player text,
result text

);

CREATE TABLE players(
  player_id serial,
  name text
);

