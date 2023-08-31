-- Query to list the names of all people who starred in a movie in which Kevin Bacon also starred --
SELECT name
FROM people
WHERE id IN (
    SELECT person_id FROM stars
    WHERE movie_id IN (
        SELECT movie_id FROM stars
        JOIN people ON stars.person_id = people.id
        WHERE name = "Kevin Bacon" AND birth = 1958
    )
) AND NOT name = "Kevin Bacon";
