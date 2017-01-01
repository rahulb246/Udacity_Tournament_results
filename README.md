#Tournament Results

###About
  This project consists of a Python module that uses a PostgreSQL database to keep track of players and matches in a game tournament by using the Swiss pairing system.

###How to run
  vagrant container and virtual box are needed for this project.

  Execute the following commands within the `vagrant/` directory.
  - `vagrant up`
  - `vagrant ssh`

  Navigate to tournament folder
  - `cd /vagrant/tournament`

  Enter into psql and run the following command to setup the tournament database
  - `\i tournament.sql`

  To test the tournament.py script
  - `python tournament_test.py`
