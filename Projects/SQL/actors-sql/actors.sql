1.Create a new table called actors (We are going to pretend the actor can only
play in one movie) The table should include name, character name, foreign key
to movies and date of birth at least plus an id field.


INSERT INTO movies.actors(name, character_name, date_birth, movieid)
VALUES	('Mike', 'Mike Awesome', '01/01/1900', 290),
				('Jimmy', 'JImmy Amazing', '02/02/1910', 290),
                ('Ryan', 'Ryan The Man', '03/03/1920', 290),
                ('James', 'James The Dark', '04/04/1930', 376),
                ('Ross', 'Ross The Grey', '05/05/1940', 376),
                ('Luke', 'The Sc8tr', '06/06/1950', 376),
                ('Leah', 'Ariel', '07/07/1960', 543),
                ('Mila', 'Mila The Cat', '08/08/1970', 592),
                ('Jordan', 'The Queen', '09/09/1980', 592),
                ('Phil', 'The Flash', '04/06/2000', 592);
  
2. Pick 3 movies and create insert statements for 10 actors each. You should use the multi value insert statements              

3. Create a new column in the movie table to hold the MPAA rating. UPDATE 5 different movies to their correct rating

UPDATE movies.movies 
SET 
    mpaa = 'pg'
WHERE
    movieid = 5;

4. Using SQL normalize the tags in the tags table. Make them lowercased and replace the spaces with -

UPDATE movies.tags 
SET 
    tag = LOWER(tag)
WHERE
    id > 0;

UPDATE movies.tags 
SET 
    tag = REPLACE((tag), ' ', '-')
WHERE
    id > 0;


5. The movie_genre table was produced by a sql query that could match a movie to the appropriate rows in genre without the use of the join table. Reproduce that query.


SELECT 
movies.movieid, genre.id
FROM 
movies.movies,
movies.genre
where  movies.genres like concat( '%', genre.genres, '%');

