-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE tournament ();

CREATE TABLE player(
  player_id serial PRIMARY KEY,
  player_name text
);

CREATE TABLE match(
game_id SERIAL PRIMARY KEY,
  player_1 INTEGER,
  player_2 INTEGER,
  winner INTEGER,
  FOREIGN KEY(player_1) REFERENCES player,
  FOREIGN KEY(player_2) REFERENCES player,
  FOREIGN KEY(winner) REFERENCES player

);
