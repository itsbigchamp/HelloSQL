

CREATE TABLE Books_ga (
    Id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    Qty INTEGER
)

CREATE TABLE Users_ga (
    Id INT PRIMARY KEY,
    Fname TEXT,
    Lname TEXT,
    Email TEXT UNIQUE
)

ALTER TABLE Users_ga
MODIFY COLUMN Email VARCHAR(200) UNIQUE NOT 
NULL;

CREATE TABLE Checkout_ga (
     Id INT PRIMARY KEY,
     book_id INT,
     user_id INT,
     checkout_date TEXT,
     resturn_date DATETIME,
     FOREIGN KEY (book_id) REFERENCES
     Books_ga(Id),
     FOREIGN KEY (user_id) REFERENCES
     Users_ga(Id)
)
INSERT INTO Books_ga (Id, Title, Genre, Author,Qty)
VALUES (1, "Rich Dad Poor Dad", "Non-Fiction", "Robert 
Kiyosaki")

SELECT * FROM Books_ga

UPDATE Books_ga
SET Qty = 1000
WHERE id = 1

INSERT INTO Books_ga
VALUES
(2, "Tuesday With Maury", "Fiction", "Mitch Albom")
(3, "Tales of 2 Cities", "Fiction", "Charles Dickens" )

SELECT Title
FROM Books_ga
WHERE Genre = "Fiction"

