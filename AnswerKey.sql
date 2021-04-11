CREATE TABLE topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        name VARCHAR(255),
                        PRIMARY KEY (id)
);

CREATE TABLE quote_topic (
                             quote_id INTEGER UNSIGNED NOT NULL,
                             topic_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (quote_id) REFERENCES quotes(id),
                             FOREIGN KEY (topic_id) REFERENCES topics(id)
);

SELECT q.content AS 'Quote',
       CONCAT(a.first_name, ' ', a.last_name) AS 'Full Name',
       t.name AS 'Topic'
FROM quotes q
         INNER JOIN quote_topic qt ON q.id = qt.quote_id
         INNER JOIN topics t ON qt.topic_id = t.id
         INNER JOIN authors a ON q.author_id = a.id
WHERE qt.topic_id IN
      (
          SELECT t.id
          FROM topics t
          WHERE t.name = 'Humor'
      );

# charts and diagram links
https://dev.mysql.com/doc/mysql-for-excel/en/mysql-for-excel-export.html

https://dbdiagram.io/home