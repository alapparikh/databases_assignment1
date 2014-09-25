use assignment1;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE questions (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  content VARCHAR(100) NOT NULL,
  score INT,
  question_date date NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) references users(id)
);

LOAD DATA LOCAL INFILE 'Users/Alap/Documents/Cornell Tech/Database Systems/Assignment1/users.csv' 
INTO TABLE users 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'Users/Alap/Documents/Cornell Tech/Database Systems/Assignment1/questions.csv' 
INTO TABLE questions 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
SET question_date = STR_TO_DATE(@expired_date, '%m/%d/%Y');
