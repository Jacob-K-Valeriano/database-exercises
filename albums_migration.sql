USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                            `id` INT unsigned NOT NULL AUTO_INCREMENT,
                            `artist` VARCHAR(100) NOT NULL,
                            `album_name` VARCHAR(100) NOT NULL,
                            `release_date` INT(100) NOT NULL,
                            `genre` LONGTEXT NOT NULL,
                            `sales` FLOAT NOT NULL,
                            primary key (id)
);
