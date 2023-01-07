-- Процедура insert_author(new_author_id, new_author_name) додає в таблицю authors новий рядок із вказаними аргументами. 

-- Видалення процедури 
DROP PROCEDURE IF EXISTS insert_author(varchar, varchar);

-- Створення процедури
CREATE OR REPLACE PROCEDURE insert_author(new_author_id varchar, new_author_name varchar)
LANGUAGE 'plpgsql'
AS $$
BEGIN
    INSERT INTO authors(author_id, author_name) VALUES (new_author_id, new_author_name);
END;
$$;

-- Перевірка роботи
CALL insert_author('JK', 'Jeff Kinney');


