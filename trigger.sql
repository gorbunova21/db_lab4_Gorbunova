-- Тригер при додаванні нового рядка в таблицю Genres записує значення genre_id у верхньому регістрі.

DROP TRIGGER IF EXISTS new_genre ON genres;
DROP FUNCTION IF EXISTS add_genre() CASCADE;

-- Перший етап: створення тригерної функції
CREATE OR REPLACE FUNCTION add_genre() RETURNS trigger 
LANGUAGE 'plpgsql'
AS
$$
     BEGIN
          UPDATE Genres 
          SET genre_id = upper(genre_id) WHERE genres.genre_id = NEW.genre_id; 
		  RETURN NULL; 
     END;
$$;

-- Другий етап: створення тригеру
CREATE TRIGGER new_genre 
AFTER INSERT ON genres 
FOR EACH ROW EXECUTE FUNCTION add_genre()

-- Перевірка роботи
INSERT INTO genres (genre_id, genre_name) VALUES ('hf','Historical fiction')

SELECT * from Genres