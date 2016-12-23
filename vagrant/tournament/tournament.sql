-- Table definitions for the tournament project.
-- Drop tournament database if it exists
DROP DATABASE IF EXISTS tournament;

--create a database named 'tournament'
CREATE DATABASE tournament;
-- connect to the database
\connect tournament

-- Drop all tables and views if they exist
DROP TABLE IF EXISTS player CASCADE;
DROP tABLE IF EXISTS match CASCADE;
DROP VIEW IF EXISTS standings CASCADE;

-- create player table
CREATE TABLE player (
  player_id serial PRIMARY KEY,
  player_name text
);

--create table 'match' referencing player as foreign KEY
CREATE TABLE match (
  match_id serial PRIMARY KEY,
  winner integer,
  loser integer,
  FOREIGN KEY(winner) REFERENCES player(player_id),
  FOREIGN KEY(loser) REFERENCES player(player_id)
);

--create a view of all the tournamnets played
CREATE VIEW standings AS
SELECT p.player_id, p.player_name,
(SELECT count(*) FROM match WHERE match.winner = p.player_id) as won,
(SELECT count(*) FROM match WHERE p.player_id in (winner, loser)) as played
FROM player as p
GROUP BY p.player_id
ORDER BY won DESC;
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
