-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
-- To initialize:
-- createdb tournament
-- psql tournament

-- Table Players
-- id is primary key
CREATE TABLE players  ( id serial primary key,
                        name varchar (25) not null,
                        created_at timestamp default current_timestamp );

-- Table matches
-- id is primary key
-- winner_id is foreign key for matches refering to players table with primary key id
-- loser_id is foriegn key for matches refering to players table with primary key id
CREATE TABLE matches  ( id serial primary key,
                        winner_id int,
                        loser_id int,
                        foreign key (winner_id) references players(id),
                        foreign key (loser_id) references players(id) );
