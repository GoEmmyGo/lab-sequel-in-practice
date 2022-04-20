-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT * FROM invoice
WHERE invoice_id IN (
  SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99
  );

-- Get all playlist tracks where the playlist name is Music.

SELECT * 
FROM playlist_track
WHERE playlist_id IN (
  SELECT playlist_id FROM playlist WHERE name = 'Music'
  );

-- Get all track names for playlist_id 5.

SELECT name FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id
WHERE playlist_track.playlist_id = 5;

-- Get all tracks where the genre is Comedy.

-- Get all tracks where the album is Fireball.

-- Get all tracks for the artist Queen ( 2 nested subqueries ).

SELECT *
FROM authors
WHERE author_id IN (
  SELECT author_id FROM books WHERE pages > 1000
);

UPDATE books
SET pages = 7
WHERE book_id IN (
  SELECT book_id
  FROM books
  WHERE title = 'Tiny Book'
);

DELETE
FROM books
WHERE author_id IN (
  SELECT author_id
  FROM authors
  WHERE author = 'Williams'
);