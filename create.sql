CREATE TABLE Books
(
  book_id              INT   NOT NULL,
  book_titel           char(100)  NOT NULL,
  author_id            char(5)  NOT NULL REFERENCES Authors (author_id),
  genre_id             char(2)  NOT NULL REFERENCES Genres (genre_id),
  book_price           INT  NOT NULL,
  CONSTRAINT pk_book PRIMARY KEY (book_id)
);

CREATE TABLE Authors
(
  author_id      char(5)  NOT NULL ,
  author_name    char(80)  NOT NULL,
  CONSTRAINT pk_authors PRIMARY KEY (author_id) 
);

CREATE TABLE Genres
(
  genre_id      char(2)  NOT NULL ,
  genre_name    char(60)      NOT NULL,
  CONSTRAINT pk_genres PRIMARY KEY (genre_id)  
);

CREATE TABLE Ratings
(
  book_id         INT   NOT NULL REFERENCES Books (book_id),
  rating_date     date,
  rating          float8 NOT NULL,
  CONSTRAINT pk_books PRIMARY KEY (book_id)
);

CREATE TABLE Reviews
(
  book_id         INT   NOT NULL REFERENCES Books (book_id),
  review_date     date,
  reviews_num     INT  NOT NULL,
  CONSTRAINT pk_rev_books PRIMARY KEY (book_id)
);
