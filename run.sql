-- Виклик процедури
CALL insert_author('JK', 'Jeff Kinney');
CALL insert_author('SK', 'Stephen King');

DELETE FROM authors WHERE author_id='JK'
DELETE FROM authors WHERE author_id='SK'

SELECT * FROM authors

-- Виклик функції
SELECT * FROM get_book('5000');
SELECT * FROM get_book('15000');

-- Виклик тригера
INSERT INTO genres (genre_id, genre_name) VALUES ('hf','Historical fiction')
INSERT INTO genres (genre_id, genre_name) VALUES ('dr','Drama')

DELETE FROM genres WHERE genre_id='HF'
DELETE FROM genres WHERE genre_id='DR'

SELECT * FROM genres