USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (35) NOT NULL,
    name VARCHAR (65) NOT NULL,
    release_date INT NOT NULL,
    sales DECIMAL NOT NULL,
    genre VARCHAR (65),
    PRIMARY KEY (id)
)