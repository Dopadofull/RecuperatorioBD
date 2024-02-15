1.
    SELECT title from film
    ORDER BY title;

2.
    SELECT DISTINCT rating from film
    ORDER BY rating;

3.
    SELECT title, rental_rate, rating from film
    WHERE rating like "pg" or rating like "pg-1%"
    ORDER BY rating ASC,rental_rate ASC;

4.
    SELECT city, country
    FROM city c JOIN country p ON c.country_id = p.country_id
    ORDER BY country, city;

5.
    SELECT country as pais, count(city) AS ciudad 
    FROM country p JOIN city c ON p.country_id = c.country_id
    GROUP BY c.country_id
    ORDER BY ciudad DESC, pais ASC;

6.
    SELECT country, count(city) as ciudad
    from city c join country p on c.country_id = p.country_id
    GROUP BY p.country_id
    HAVING ciudad >1
    ORDER BY ciudad DESC, country ASC;

7.
    SELECT min(rental_date) as fecha_mas_vieja, max(rental_date) as fecha_mayor
    from rental
    WHERE return_date IS NOT NULL;