--add
INSERT INTO actor (name, dob) VALUES([name],[birthday]);
INSERT INTO movie (name, dateReleased, prodComp) VALUES([],[],[]);
INSERT INTO tvshow (name, dateAired, numEpisodes) VALUES ([],[],[]);
INSERT INTO award (name) VALUES ("Academy Award");
INSERT INTO productionCompany (name, dateFounded) VALUES ([],[]);
INSERT INTO won (awardId, actorId) VALUES ((SELECT id FROM award WHERE name="BAFTA"), 
	(SELECT id FROM actor WHERE name=""));
INSERT INTO tvActor (tvId, actorId) VALUES ((SELECT id FROM tvId WHERE name="Grey's Anatomy"),
	(SELECT id FROM actor WHERE name="Keira Knightley");
INSERT INTO movieActor (movieId, actorId) VALUES ((SELECT id FROM movie WHERE name="Cars"), 
	(SELECT id FROM actor WHERE name="Kate Winslet");

--select
SELECT name, dob FROM actor WHERE dob > [dobInput];

SELECT name, dateReleased FROM movie WHERE dateReleased < [dateInput];

SELECT name, numEpisodes FROM tvshow WHERE numEpisodes > [episodesInput];

SELECT actor.name FROM actor INNER JOIN
	tvActor ON actor.id=tvActor.actorId INNER JOIN
	tvshow ON tvActor.tvId=tvshow.id WHERE tvshow.name= [show name];

SELECT actor.name, COUNT(movie.id) FROM movie INNER JOIN movieActor ON movie.id=movieActor.movieId
	INNER JOIN actor ON movieActor.actorId=actor.id WHERE actor.name=
	(SELECT name FROM actor where id=[ActorNameInput]) GROUP BY actor.id

SELECT actor.name FROM actor INNER JOIN 
	won ON actor.id = won.actorId INNER JOIN
	award ON won.awardId = award.id WHERE award.name = [awardName]; 