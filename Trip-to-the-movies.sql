#Select all columns and rows from the movies table
SELECT 
    *
FROM
    movies.movies;
    
#Select all columns and rows from the movies table
SELECT 
     movieid, title
FROM
    movies.movies
LIMIT 10;

#Find the movie with the id of 485
SELECT 
    *
FROM
    movies.movies
WHERE
    movieid = '485';

#Find the id (only that column) of the movie Made in America (1993)
SELECT 
    movieid
FROM
    movies.movies
WHERE
    title = 'Made in America (1993)';
    
#Find the first 10 sorted alphabetically
SELECT 
    *
FROM
    movies.movies
ORDER BY title ASC
LIMIT 10;

#Find the first 10 sorted alphabetically
SELECT 
    *
FROM
    movies.movies
WHERE
    title LIKE '%2002%';
    
#Find out what year the Godfather came out
SELECT 
    *
FROM
    movies.movies
WHERE
    title like '%godfather,%';

#Without using joins find all the comedies
SELECT 
    *
FROM
    movies.movies
WHERE
    genres LIKE '%comedy%';
    
#Find all comedies in the year 2000
    
SELECT 
    *
FROM
    movies.movies
WHERE
    genres LIKE '%comedy%'
        AND title LIKE '%2000%';

#Find any movies that are about death and are a comedy
SELECT 
    *
FROM
    movies.movies
WHERE
    title LIKE '%death%';

#Find any movies from either 2001 or 2002 with a title containing super
SELECT 
    *
FROM
    movies.movies
WHERE
    title LIKE '%super%'
        AND title LIKE '%2001%'
        OR title LIKE '%super%'
        AND title LIKE '%2002%';


#hUsing SQL, normalize the tags in the tags table. Make them lowercased and replace the spaces with '-'s
    
SELECT 
    REPLACE( LOWER(tag), ' ', '-' )
FROM
    movies.tags;



