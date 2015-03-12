-- Table definitions for the tournament project.

-- Drop tournament database if it exists
DROP DATABASE IF EXISTS tournament;

-- Create Database 'Tournament'
CREATE DATABASE tournament;

-- Connect to the tournament database
\connect tournament

-- Drop all tables and views if they exist
DROP TABLE IF EXISTS player CASCADE;
DROP tABLE IF EXISTS match CASCADE;
DROP VIEW IF EXISTS standings CASCADE;

-- Creates player table
CREATE TABLE player(
  player_id serial PRIMARY KEY,
  player_name text
);

-- Creates match table with FK to player
CREATE TABLE match (
  match_id serial PRIMARY KEY,
  winner INTEGER,
  loser INTEGER,
  FOREIGN KEY(winner) REFERENCES player(player_id),
  FOREIGN KEY(loser) REFERENCES player(player_id)
);

-- Creates a view of matches played sorted by won count
CREATE VIEW standings AS
SELECT p.player_id as player_id, p.player_name,
(SELECT count(*) FROM match WHERE match.winner = p.player_id) as won,
(SELECT count(*) FROM match WHERE p.player_id in (winner, loser)) as played
FROM player p
GROUP BY p.player_id
ORDER BY won DESC;