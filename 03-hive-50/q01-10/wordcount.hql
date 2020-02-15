
DROP TABLE IF EXISTS docs;

CREATE TABLE docs (letra       STRING,
                           fecha        STRING,
                           numero      INT)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t';


LOAD DATA INPATH "/tmp/wordcount/" OVERWRITE INTO TABLE docs;

CREATE TABLE word_counts as
SELECT * FROM docs:


INSERT OVERWRITE DIRECTORY '/tmp/output'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
SELECT * FROM word_counts;
