# Galactical Associations Koans
Confused about database relations with DataMapper? These koans are intended as a learning tool just for you.

### Instructions
1. Clone the repository.
2. Create the database: `rake db:create`
3. Run `rake galaxy` to work progressively through the problems. Alternatively, run a single stage with `rake galaxy:stage`, e.g `rake galaxy:beta`.

### Stages
In the domain we have: planets, moons, a sun, and asteroids.

#### Alpha
- Suns have many planets.
- Planets belongs to a sun.

#### Beta
- Planets have many moons.
- Moons belong to a planet.

#### Gamma
- Planets have many asteroids.
- Asteroids have many planets.

#### Delta
- A spaceship has many astronauts, via crewings.
- Astronauts have many spaceships, via crewings.
- A spaceship can have a captain.
- A captain can be captain of a spaceship.

#### Epsilon 
- Suns have many moons, through planets.
- Moons have a single Sun, through a planet.

