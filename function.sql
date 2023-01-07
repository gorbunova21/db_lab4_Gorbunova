-- Функція get_book(my_reviews) виводить назви усіх книги із кількістю відгуків більшою заданої. 

-- Видалення функції
DROP FUNCTION IF EXISTS get_book(integer); 

-- Створення функції
CREATE OR REPLACE FUNCTION get_book(my_reviews integer) 
    RETURNS TABLE (book_titel varchar, reviews_num integer)
    LANGUAGE 'plpgsql'
AS $$
BEGIN
    RETURN QUERY
        SELECT books.book_titel::varchar, reviews.reviews_num::integer
		FROM books JOIN reviews ON books.book_id = reviews.book_id 
		WHERE reviews.reviews_num >= my_reviews;
END;
$$

-- Перевірка роботи
SELECT * FROM get_book('10000');
