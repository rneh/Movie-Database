--Programmer: Rebecca Hitchman
--Date: 3/10/2016
--Program Description: SQL create table queries

--Creates a table called movie with the following attributes:
--ID: primary key, auto incrementing integer
--name: name of the film 
--dateReleased: date the film was released
--prodComp: production company for the movie

CREATE TABLE movie (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	dateReleased DATE,
	prodComp VARCHAR(255),
	PRIMARY KEY (id),
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;


--Creates a table called actor with the following attributes:
--ID: primary key, auto incrementing integer
--first_name: actor's first name
--last_name: actor's last name
--dob: date type

CREATE TABLE actor (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL, 
	dob DATE,
	PRIMARY KEY (id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT into actor (first_name, last_name, dob) VALUES([first],[last],[dob]);

--Creates a table called tvshow with the following attributes:
--ID: primary key, auto incrementing integer
--name: television show's name
--dateAired: date the first episode aired for the television series
--numEpisodes: number of episodes that have aired for the television show

CREATE TABLE tvshow (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	dateAired DATE,
	numEpisodes VARCHAR(255),
	PRIMARY KEY (id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Creates a table called award:
--ID: primary key, auto-increment
--name: name of award
--foreign key that references ID 

CREATE TABLE award (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Creates a table called won:
--awardId: foreign key referencing award won
--actorId: foreign key referencing actor who one it
--category: category actor won, example: best supporting actor

CREATE TABLE won (
	awardId int(11) UNSIGNED NOT NULL,
	actorId int(11) UNSIGNED NOT NULL,
	FOREIGN KEY (awardId) REFERENCES award(id),
	FOREIGN KEY (actorId) REFERENCES actor(id),
	category VARCHAR(255) NOT NULL,
	PRIMARY KEY (awardId, actorId)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Creates a table called tvActor:
--tvId: foreign key referencing tv show
--actorId: foreign key referencing actor in tv show

CREATE TABLE tvActor (
	tvId int(11) UNSIGNED NOT NULL,
	actorId int(11) UNSIGNED NOT NULL,
	FOREIGN KEY (tvId) REFERENCES tvshow(id),
	FOREIGN KEY (actorId) REFERENCES actor(id),
	PRIMARY KEY (tvId, actorId)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--Creates a table called movieActor:
--movieId: foreign key referencing movie
--actorId: foreign key referencing actor in movie

CREATE TABLE movieActor (
	movieId int(11) UNSIGNED NOT NULL,
	actorId int(11) UNSIGNED NOT NULL,
	FOREIGN KEY (movieId) REFERENCES movie(id),
	FOREIGN KEY (actorId) REFERENCES actor(id),
	PRIMARY KEY (movieId, actorId)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;




