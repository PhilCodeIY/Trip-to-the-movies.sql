
SELECT 
    *
FROM
    movies.movies;
    
    
SELECT 
     movieid, title
FROM
    movies.movies
LIMIT 10;


SELECT 
    *
FROM
    movies.movies
WHERE
    movieid = '485';
    
SELECT 
    movieid
FROM
    movies.movies
WHERE
    title = 'Made in America (1993)';
    
    
SELECT 
    *
FROM
    movies.movies
ORDER BY title ASC
LIMIT 10;


SELECT 
    *
FROM
    movies.movies
WHERE
    title LIKE '%2002%';
    
    
SELECT 
    *
FROM
    movies.movies
WHERE
    title like '%godfather,%';
    
    
SELECT 
    *
FROM
    movies.movies
WHERE
    title LIKE '%super%'
        AND title LIKE '%2001%'
        OR title LIKE '%super%'
        AND title LIKE '%2002%';



******************; 
    
SELECT 
    REPLACE( LOWER(tag), ' ', '-' )
FROM
    movies.tags;


*************************;

