# IPL-Teams-Players-Management
This MySQL database project manages information related to the Indian Premier League (IPL), focusing on IPL teams and player compositions. It is designed to store, organize, and query data about team details, player roles, ownership, locations, and performance metrics such as the number of trophies won.

## Objective :
To design and manage a MySQL database for storing and analyzing information related to IPL (Indian Premier League) Teams and Players, enabling data-driven insights into team details, player compositions, and performance metrics.

## Questions :

- What are the details of IPL teams, including ownership, location, trophies won, and key personnel like coach and captain?

- What are the player compositions of each team, including roles such as batsmen, bowlers, wicketkeepers, and all-rounders?

- Which team has won the most trophies?

- How can teams and players be filtered based on specific conditions (e.g., founded year, location)?

- How are players distributed across different teams?

- How many teams have fewer than or equal to two trophies?

- How can specific updates be made to the database (e.g., correcting location or sponsor details)?

## Process :

#### Database & Table Creation:

Create the database ipl.

###### Create two tables:

- Teams table containing team number, name, owner, sponsor, coach, founded year, captain, location, and trophies won.

- Players table linking players to teams using foreign key Tno, with player roles and compositions.

#### Data Insertion:

- Populate the Teams table with sample data about various IPL teams.

- Populate the Players table with player data corresponding to each team.

#### Data Manipulation & Queries:

- Update and modify data, e.g., changing sponsor names or locations.

###### Perform various queries to extract insights:

- List all teams and players.

- Filter teams based on conditions (e.g., location, founded year).

- Aggregate functions: count total teams, sum trophies, average trophies, max/min trophies.

- Retrieve top-performing teams or count teams by trophies.

- Sort teams in descending order by team number.

#### Database Maintenance:

- Demonstrate commands for truncating, deleting, and dropping tables.
