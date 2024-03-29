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

8.
    SELECT title as peliculas, count(actor_id) as actores FROM film f
    JOIN film_actor fa ON f.film_id = fa.film_id
    GROUP BY f.film_id
    ORDER BY actor_iD ASC LIMIT 10;

9.
    SELECT p.title as pelicula, count(*) as alquileres
    FROM film p JOIN inventory i ON p.film_id = i.film_id
    JOIN rental r ON i.inventory_id = r.inventory_id
    GROUP BY p.film_id
    ORDER BY alquileres DESC LIMIT 1 OFFSET 2;
