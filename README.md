# Udacity-Tournament-Database

## Installation

1. Download the project files at [https://github.com/sanyata88/tournament_db]
2. You may also clone the project to your Github account.
3. Download Vagrantfile and virtual machine app on your desktop.
4. Cd to vagrant directory in terminal with command -  cd vagrant
5. Type command - vagrant up
6. Type command - vagrant ssh , this will take you inside the virtual machine environment
7. Change to current directory cd/vagrant/tournament
8. Type command  --  psql
9. run tests using command -- python tournament_test.py

## RESULTS FOR TEST

All tests should pass succesfully!

vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success! All tests pass!
