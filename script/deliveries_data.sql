-- create_deliveries_table.sql
-- Connect to the ipl_db as ipl_user
\c ipl_db ipl_user;

-- Create the deliveries table
CREATE TABLE deliveries (
    match_id INT,
    inning INT,
    batting_team VARCHAR(50),
    bowling_team VARCHAR(50),
    over INT,
    ball INT,
    batsman VARCHAR(50),
    non_striker VARCHAR(50),
    bowler VARCHAR(50),
    is_super_over INT,
    wide_runs INT,
    bye_runs INT,
    legbye_runs INT,
    noball_runs INT,
    penalty_runs INT,
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    player_dismissed VARCHAR(50),
    dismissal_kind VARCHAR(50),
    fielder VARCHAR(50)
);

-- Load the data from the CSV file
\COPY deliveries(match_id,inning,batting_team,bowling_team,over,ball,batsman,non_striker,bowler,is_super_over,wide_runs,bye_runs,legbye_runs,noball_runs,penalty_runs,batsman_runs,extra_runs,total_runs ,player_dismissed ,dismissal_kind ,fielder)
FROM '/data/matches.csv' DELIMITER ',' CSV HEADER;

