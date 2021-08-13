
-- ARTIST TABLE

SELECT * FROM artist
INSERT INTO artist(name)
VALUES('Turntlanes');

INSERT INTO artist(name)
VALUES('The Devmountains');

INSERT INTO artist(name)
VALUES('The Developers');

SELECT * FROM artist
ORDER BY artist.name ASC
OFFSET 273


-- EMPLOYEE TABLE

SELECT employee.first_name, employee.last_name FROM employee
WHERE city = 'Calgary'

SELECT * FROM employee
WHERE reports_to = 2

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'



-- INVOICE TABLE


SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA'

SELECT total FROM invoice
ORDER BY total DESC

SELECT total FROM invoice
ORDER BY total ASC

SELECT * FROM invoice
WHERE total > 5

SELECT COUNT(*) FROM invoice
WHERe total < 5

SELECT SUM(total) FROM invoice


-- JOIN


SELECT * FROM invoice
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id
WHERE unit_price > .99

SELECT invoice.invoice_date, customer.first_name,
customer.last_name, invoice.total
FROM invoice
JOIN customer
ON invoice.customer_id = customer.customer_id

SELECT customer.first_name, customer.last_name,
employee.first_name, employee.last_name
FROM customer
JOIN employee
ON customer.support_rep_id = employee.employee_id

SELECT album.title, artist.name
FROM album
JOIN artist
ON album.artist_id = artist.artist_id



-- EXTRA CREDIT

-- ARTIST TABLE

SELECT * FROM artist
ORDER BY artist.name ASC
OFFSET 268

SELECT * FROM artist
WHERE artist.name LIKE 'Black%'

SELECT * FROM artist
WHERE artist.name LIKE '%Black%'

-- EMPLOYEE TABLE

SELECT * FROM employee
ORDER BY employee.birth_date DESC

SELECT * FROM employee
ORDER BY employee.birth_date ASC


-- INVOICE TABLE

SELECT COUNT(total)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice


-- JOIN


SELECT playlist_track.playlist_track_id 
FROM playlist_track
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id

SELECT track.name FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id
WHERE playlist.playlist_id = 5

SELECT track.name, playlist.name
FROM track
JOIN playlist_track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id

SELECT track.name, album.title
FROM track
JOIN album
ON track.album_id = album.album_id
JOIN genre
ON track.genre_id = genre.genre_id
WHERE genre.name = 'Alternative & Punk'


