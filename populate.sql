INSERT INTO Authors (author_id, author_name) VALUES
('GO','George Orwell'),
('GM','George R. R. Martin'),
('VR','Veronica Roth'),
('JR','J.K. Rowling'),
('RB','Ray Bradbury'),
('RP','Roger Priddy'),
('DC','Dale Carnegie'),
('BS','Brandon Stanton'),
('SC','Stephen R. Covey');


INSERT INTO genres (genre_id, genre_name) VALUES
('F','Fiction'),
('NF','Non Fiction');


INSERT INTO ratings (book_id,rating_date,rating) VALUES
('1','12.10.2009','4.9'),
('2','23.05.2014','4.7'),
('3','07.11.2010','4.7'),
('4','14.08.2012','4.7'),
('5','03.12.2013','4.6'),
('6','15.04.2011','4.7'),
('7','18.02.2015','4.8'),
('8','30.11.2009','4.6'),
('9','27.07.2012','4.4'),
('10','19.09.2010','4.7');


INSERT INTO reviews (book_id,review_date,reviews_num) VALUES
('1','05.12.2014','10052'),
('2','21.08.2019','19735'),
('3','11.10.2019','21424'),
('4','08.03.2018','17323'),
('5','21.01.2019','27098'),
('6','13.07.2017','25001'),
('7','18.02.2015','3490'),
('8','30.11.2016','10721'),
('9','27.07.2014','12643'),
('10','19.09.2012','4725');

		
INSERT INTO books (book_id, book_titel, author_id, genre_id, book_price) VALUES
('1','Harry Potter and the Sorcerers Stone','JR','F','22'),
('2','A Game of Thrones','GM','F','30'),
('3','1984','GO','F','6'),
('4','First 100 Words','RP','NF','4'),
('5','Divergent','VR','F','15'),
('6','How to Win Friends & Influence People','DC','NF','11'),
('7','Humans of New York','BS','NF','15'),
('8','Fahrenheit','RB','F','8'),
('9','A Dance with Dragons','GM','F','11'),
('10','The 7 Habits of Highly Effective People','SC','NF','16');



